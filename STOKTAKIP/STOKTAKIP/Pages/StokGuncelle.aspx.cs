
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
    public partial class StokGuncelle : System.Web.UI.Page
    {
        int guncelleme_miktari = 0;
        int id;
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["arttirazalt"];

            id = Convert.ToInt32(Request.QueryString["Urunid"]);
            if (Page.IsPostBack == false)
            {
                SayfayiYukle();
            }
        }
        private void SayfayiYukle()
        {
            if (islem=="azalt")
            {
                lbl_degisenUrunMiktari.Text = "Çıkarılacak ürün miktarı";
            }
            else if(islem=="arttir")
            {
                lbl_degisenUrunMiktari.Text = "Eklenecek ürün miktarı";

            }
        }
        protected void GuncellemeMiktariniDuzenle()
        {
            bool checkIfCountLessThanZero;
            if (islem == "arttir")
            {
                guncelleme_miktari = Convert.ToInt32(txtbx_Adet.Text);
            }
            else if (islem == "azalt")
            {
                txtbx_Adet.Text = "Çıkartılacak ürün miktarı";
                guncelleme_miktari = Convert.ToInt32("-" + txtbx_Adet.Text);
            }
        }
        protected void AlanlariTemizle()
        {
            txtbx_Adet.Text = string.Empty;
            txtbx_UrunKodu.Text = string.Empty;
            lbl_BasariliYadaDegil.Text = string.Empty;
        }

        protected bool MevcutUrunAdediCikarilandanAzMi(Urun urun, int cikarilacakUrunMiktari)
        {
            DataTable dt = urun.UrunKodunaGoreSatirGetir();
            foreach (DataRow r in dt.Rows)
            {
                int mevcurUrunMiktari = Convert.ToInt32(r["urun_sayisi"].ToString());
                if (mevcurUrunMiktari+cikarilacakUrunMiktari<0)
                {
                    return true;
                }
            }
            return false;
        }
            protected void btn_Guncele_Command(object sender, CommandEventArgs e)
        {
            Regex rgx = new Regex("[^A-Za-z0-9]");
            bool containsSpecialCharacterInAdet = rgx.IsMatch(txtbx_Adet.Text);
            if (!(containsSpecialCharacterInAdet))
            {

                if (txtbx_UrunKodu.Text.Length != 6)
                {
                    lbl_BasariliYadaDegil.Visible = true;
                    lbl_BasariliYadaDegil.Text = "kodun 6 haneli olmasına dikakt hocam";
                }
                else
                {
                    if (Convert.ToInt32(txtbx_Adet.Text)<0)
                    {
                        lbl_BasariliYadaDegil.Visible = true;
                        lbl_BasariliYadaDegil.Text = "Ürün adedi sıfırın altında olamaz. Lütfen kontrol ediniz.";
                    }
                    else
                    {
                       
                        VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
                        veriTabaniIslemleri.BaglantiBaslat();
                        Urun urun = new Urun(veriTabaniIslemleri);
                        urun.Kod = Convert.ToInt32(txtbx_UrunKodu.Text);
                        if (islem == "arttir")
                        {
                            guncelleme_miktari = Convert.ToInt32(txtbx_Adet.Text);
                        }
                        else if (islem == "azalt")
                        { 
                            //txtbx_Adet.Text = "Çıkartılacak ürün miktarı";
                            guncelleme_miktari = Convert.ToInt32("-" + txtbx_Adet.Text);
                        }
                        urun.StokGuncllemeMiktari = guncelleme_miktari;
                        if (MevcutUrunAdediCikarilandanAzMi(urun, guncelleme_miktari))
                        {
                            lbl_BasariliYadaDegil.Visible = true;
                            lbl_BasariliYadaDegil.Text = "Ürün adedi sıfırın altında olamaz. Lütfen kontrol ediniz.";
                        }
                        else
                        {
                            urun.StokGuncelle();
                            txtbx_UrunKodu.Text = string.Empty;
                            txtbx_Adet.Text = string.Empty;
                            AlanlariTemizle();
                        }
                       
                    }
                }
            }
            else
            {
                lbl_BasariliYadaDegil.Visible = true;
                lbl_BasariliYadaDegil.Text = "ozel karakterlere aman dikkat hocam";
            }
        }
    }
}