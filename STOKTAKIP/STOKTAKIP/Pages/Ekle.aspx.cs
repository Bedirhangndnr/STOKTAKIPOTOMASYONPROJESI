using BusinessLayer.Entity;
using BusinessLayer.Work;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace STOKTAKIP
{
    public partial class Ekle : System.Web.UI.Page
    {
        int id;
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            islem = Request.QueryString["islem"];
            id = Convert.ToInt32(Request.QueryString["Urunid"]);
        }
        private bool UrunKoduKontrol()
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            DataTable dt = urun.TumunuGetir();
            foreach (DataRow dr in dt.Rows)
            {
                if (dr["urun_kodu"].ToString() == txtbx_UrunKodu.Text)
                {
                    return false;
                }
            }
            return true;
        }

        protected void AlanlariTemizle()
        {
            txtbx_Adet.Text = string.Empty;
            txtbx_UrunAdi.Text = string.Empty;
            txtbx_UrunKodu.Text = string.Empty;
            lbl_BasariliYadaDegil.Text = string.Empty;
        }
        protected void Guncelle_Ekle(object sender, CommandEventArgs e)
        {
            if (String.IsNullOrEmpty(txtbx_UrunAdi.Text.Trim()) || String.IsNullOrEmpty(txtbx_UrunKodu.Text.Trim()))
            {
                lbl_BasariliYadaDegil.Text = "Gönderme işlemi başarısız. Yapılış veya malzemeler bilgilerini girmelisiniz...";
                lbl_BasariliYadaDegil.ForeColor = System.Drawing.Color.Red;
                lbl_BasariliYadaDegil.Visible = true;
            }
            else
            {

                Regex rgx = new Regex("[^A-Za-z0-9]");
                bool containsSpecialCharacterInAdet = rgx.IsMatch(txtbx_Adet.Text);
                bool containsSpecialCharacterInKod = rgx.IsMatch(txtbx_UrunKodu.Text);
                if (!(containsSpecialCharacterInAdet && containsSpecialCharacterInKod))
                {
                    if (txtbx_UrunKodu.Text.Length != 6)
                    {
                        lbl_BasariliYadaDegil.Visible = true;
                        lbl_BasariliYadaDegil.Text = "kodun 6 haneli olmasına dikakt hocam";
                    }
                    else
                    {
                        if (!UrunKoduKontrol())
                        {
                            lbl_BasariliYadaDegil.Visible = true;
                            lbl_BasariliYadaDegil.Text = "Bu ürün kodu kullanılmakta. Başka bir kod deneyiniz.";
                        }
                        else
                        {
                            if (txtbx_UrunAdi.Text.Length>250)
                            {
                                lbl_BasariliYadaDegil.Visible = true;
                                lbl_BasariliYadaDegil.Text = "Ürün adı 250 karakterden küçük olmalı. Kontrol ediniz.";
                            }
                            else
                            {
                                VeriTabaniIslemleri veriTabaniIslemleriUrunEkle = new VeriTabaniIslemleri();
                                veriTabaniIslemleriUrunEkle.BaglantiBaslat();
                                Urun urun = new Urun(veriTabaniIslemleriUrunEkle);
                                urun.Kod = Convert.ToInt32(txtbx_UrunKodu.Text);
                                urun.Isim = txtbx_UrunAdi.Text;
                                urun.Sayi = Convert.ToInt32(txtbx_Adet.Text);
                                urun.Urun_agirligi = Convert.ToInt32(txtbx_UrunAgirligi.Text);
                                urun.Insert();
                                veriTabaniIslemleriUrunEkle.BaglantiBitir();
                                lbl_BasariliYadaDegil.Visible = false;
                                AlanlariTemizle();
                                lbl_BasariliYadaDegil.Visible = true;
                                lbl_BasariliYadaDegil.ForeColor = System.Drawing.Color.Green;
                                lbl_BasariliYadaDegil.Text = "Başarılı... Ürün kaydedildi.";
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
}