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
            if (Page.IsPostBack == false)
            {
                SayfayiYukle();
            }
        }
        private bool UrunKoduKontrol()
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            DataTable dt= urun.TumunuGetir();
            foreach (DataRow dr in dt.Rows)
            {
                if (dr["urun_kodu"].ToString()==txtbx_UrunKodu.Text)
                {
                    return false;
                }
            }
            return true;
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

            //SqlCommand comm2 = new SqlCommand("select * from kategoriler", conn.baglan());
            //SqlDataReader dr2 = comm2.ExecuteReader();
            //ddlKategoriler.DataTextField = "KategoriAd";
            //ddlKategoriler.DataValueField = "Kategoriid";
            //ddlKategoriler.DataSource = dr2;
            //ddlKategoriler.DataBind();
            //conn.baglantiKapat();

            VeriTabaniIslemleri veriTabaniIslemleri_urunGetir = new VeriTabaniIslemleri();
            veriTabaniIslemleri_urunGetir.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri_urunGetir);
            urun.ID = 316;
            //SqlDataReader dr = urun.GetById();
            DataTable dt = urun.SatirGetir();
            //SqlCommand comm = new SqlCommand("select * from urunler where Urunid=@p1", conn.baglan());
            //comm.Parameters.AddWithValue("@p1", id);
            //SqlDataReader dr = comm.ExecuteReader();

            foreach (DataRow r in dt.Rows)
            {
                //ddlKategoriler.SelectedValue = dr[7].ToString();
                txtbx_UrunAdi.Text = r["urun_adi"].ToString();
                txtbx_Adet.Text = r["urun_sayisi"].ToString();
            }
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
                    //if (txtbx_UrunKodu.Text.Length!=6)
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
                            VeriTabaniIslemleri veriTabaniIslemleriUrunEkle = new VeriTabaniIslemleri();
                            veriTabaniIslemleriUrunEkle.BaglantiBaslat();
                            Urun urun = new Urun(veriTabaniIslemleriUrunEkle);
                            urun.Kod = Convert.ToInt32(txtbx_UrunKodu.Text);
                            urun.Isim = txtbx_UrunAdi.Text;
                            urun.Sayi = Convert.ToInt32(txtbx_Adet.Text);
                            urun.Insert();
                            veriTabaniIslemleriUrunEkle.BaglantiBitir();
                            lbl_BasariliYadaDegil.Visible = false;
                            AlanlariTemizle();
                        }
                    }
                }
                else
                {
                    lbl_BasariliYadaDegil.Visible = true;
                    lbl_BasariliYadaDegil.Text = "ozel karakterlere aman dikkat hocam";
                }
                //if (fu_urunResim.FileName.Length != 0)
                //{
                //    fu_urunResim.SaveAs(Server.MapPath("/resimler/" + fu_urunResim.FileName));
                //}

            }
        }

            // BU KISIMDAN DEVAM EDİLECEK. ÜSTTE YAZILAN KODLARIN TAMAMI ÇALIŞTIRILIP DENENECEK. TARİH: 06.10.2022 11:08.
            protected void Sil(object sender, CommandEventArgs e)
            {
                VeriTabaniIslemleri veriTabaniIslemleriUrunEkle = new VeriTabaniIslemleri();
                veriTabaniIslemleriUrunEkle.BaglantiBaslat();
                Urun urun = new Urun(veriTabaniIslemleriUrunEkle);
                urun.ID = id;
                urun.Delete();
                veriTabaniIslemleriUrunEkle.BaglantiBitir();
                //SqlCommand comm3 = new SqlCommand("delete from Tbl_Yorumlar where Urunid=@p1;", conn.baglan());
                //comm3.Parameters.AddWithValue("@p1", id);
                //comm3.ExecuteNonQuery();
                //conn.baglantiKapat();
                //SqlCommand comm4 = new SqlCommand("delete from Tbl_Urunler where Urunid=@p1;", conn.baglan());
                //comm4.Parameters.AddWithValue("@p1", id);
                //comm4.ExecuteNonQuery();
                //conn.baglantiKapat();
                //txtbxUrunAd.Text = "";
                //txtbxUrunMalzemeler.Text = "";
                //txtbxUrunTarif.Text = "";
                //txtbx_EkleyenMail.Text = "";
                //txtbx_EkleyenAd.Text = "";
                //SayfayiYukle();
                //lbl_BasariliYadaDegil.Text = "Silme islemi basarili";
                //lbl_BasariliYadaDegil.ForeColor = System.Drawing.Color.Green;
                //lbl_BasariliYadaDegil.Visible = true;
            }
        }
    }