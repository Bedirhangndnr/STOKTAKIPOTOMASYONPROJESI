using BusinessLayer.Entity;
using BusinessLayer.Work;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STOKTAKIP
{
    public partial class Duzenle : System.Web.UI.Page
    {
        int id;
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (Page.IsPostBack == false)
            {
                SayfayiYukle();
            }
        }
        private void SayfayiYukle()
        {
            lbl_BasariliYadaDegil.Visible = false;
            if (islem == "ekle")
            {
                //btn_Sil.Visible = false;
                //btn_Guncele.Text = "Ekle";
                //btn_GununYemegiYp.Visible = false;
            }


            VeriTabaniIslemleri veriTabaniIslemleri_urunGetir = new VeriTabaniIslemleri();
            veriTabaniIslemleri_urunGetir.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri_urunGetir);
            urun.ID = id;
            DataTable dt = urun.SatirGetir();


            foreach (DataRow r in dt.Rows)
            {
                //ddlKategoriler.SelectedValue = dr[7].ToString();
                txtbx_UrunAdi.Text = r["urun_adi"].ToString();
                txtbx_Adet.Text = r["urun_sayisi"].ToString();
                lbl_UrunKodu.Text = r["urun_kodu"].ToString();
            }
        }
        protected void AlanlariTemizle()
        {
            txtbx_Adet.Text = string.Empty;
            txtbx_UrunAdi.Text = string.Empty;
            lbl_BasariliYadaDegil.Text = string.Empty;
        }
        protected void btn_Guncele_Command(object sender, CommandEventArgs e)
        {
            Regex rgx = new Regex("[^A-Za-z0-9]");
            bool containsSpecialCharacterInAdet = rgx.IsMatch(txtbx_Adet.Text);
            if (!(containsSpecialCharacterInAdet))
            {
                if (txtbx_UrunAdi.Text.Length>250)
                {
                    lbl_BasariliYadaDegil.Visible = true;
                    lbl_BasariliYadaDegil.Text = "Ürün adı 250 haneyi aşmamalı. Bu koşulları sağlamadınız, kontrol ediniz.";
                }
                else
                {
                    if (Convert.ToInt32(txtbx_Adet.Text) < 0)
                    {
                        lbl_BasariliYadaDegil.Visible = true;
                        lbl_BasariliYadaDegil.Text = "Ürün adedi sıfırın altında olamaz. Lütfen kontrol ediniz.";
                    }
                    else
                    {
                        VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
                        veriTabaniIslemleri.BaglantiBaslat();
                        Urun urun = new Urun(veriTabaniIslemleri);
                        urun.ID = id;
                        urun.Isim = txtbx_UrunAdi.Text;
                        urun.Sayi = Convert.ToInt32(txtbx_Adet.Text);
                        urun.Kod = Convert.ToInt32(lbl_UrunKodu.Text);
                        urun.Update();
                        veriTabaniIslemleri.BaglantiBitir();
                        AlanlariTemizle();
                    }


                }
            }

        }

        protected void btn_sil_Command(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            urun.ID = id;
            urun.Delete();
            veriTabaniIslemleri.BaglantiBitir();
        }
    }
}