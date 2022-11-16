using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using BusinessLayer.Entity;
using BusinessLayer.Work;

namespace STOKTAKIP
{
    public partial class UrunListesi : System.Web.UI.Page
    {
        int id;
        int kategori_id;
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            if (!Page.IsPostBack)
            {
                YemekleriiGetir("tumUrunleriGetir");
            }
        }
        private void YemekleriiGetir(string yorumTuru)
        {
            string sorgu = "";
            if (yorumTuru == "tumUrunleriGetir")
            {
                //sorgu = "select *,(case when YemekOnayDurum=1 then 'Onaylı' else 'Onaysız' End) [YemekOnayDurum] from Tbl_Yemekler";
                VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
                veriTabaniIslemleri.BaglantiBaslat();
                Urun urun = new Urun(veriTabaniIslemleri);
                SqlDataReader sqlDataReader = urun.GetAll();
                DataList1.DataSource = sqlDataReader;
                DataList1.DataBind();
                veriTabaniIslemleri.BaglantiBitir();
            }
            else
            {
                VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
                veriTabaniIslemleri.BaglantiBaslat();
                Urun urun = new Urun(veriTabaniIslemleri);
                urun.Isim = txtbx_SrcBtn.Text;
                DataTable dt = urun.UrunAdinaGoreGetir();
                DataList1.DataSource = dt;
                DataList1.DataBind();
                veriTabaniIslemleri.BaglantiBitir();
            }
        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun yemek = new Urun(veriTabaniIslemleri);
            yemek.ID = Convert.ToInt32(e.CommandArgument);
            yemek.Delete();
            veriTabaniIslemleri.BaglantiBitir();
            YemekleriiGetir("tumUrunleriGetir");


            // silme islemi
            //SqlCommand comm3 = new SqlCommand("delete from Tbl_Yorumlar where Yemekid=@p1; " +
            //    "delete from Tbl_Yemekler where Yemekid=@p1", conn.baglan());
            //comm3.Parameters.AddWithValue("@p1", e.CommandArgument);
            //comm3.ExecuteNonQuery();
            //conn.baglantiKapat();

            //SqlCommand commDelKategoriAdet = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet=KategoriAdet-1 WHERE Kategoriid=@p2", conn.baglan());
            //commDelKategoriAdet.Parameters.AddWithValue("@p2", kategori_id);
            //commDelKategoriAdet.ExecuteNonQuery();

            //conn.baglantiKapat();
            //YemekleriiGetir(0);
        }

        // yemek onaylama islemi
        protected void Unnamed_Command1(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            urun.ID= Convert.ToInt32(e.CommandArgument);
            //urun.UpdateOnayla();
            veriTabaniIslemleri.BaglantiBitir();
            YemekleriiGetir("tumUrunleriGetir");
            // Onayla islemi
            //SqlCommand comm3 = new SqlCommand("update Tbl_Yemekler Set YemekOnayDurum=1 where Yemekid=@p1;", conn.baglan());
            //comm3.Parameters.AddWithValue("@p1", e.CommandArgument);
            //comm3.ExecuteNonQuery();
            //conn.baglantiKapat();
            //YemekleriiGetir(0);
        }
        // yemek onay kaldirma islemi

        protected void Unnamed_Command2(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun Urun = new Urun(veriTabaniIslemleri);
            Urun.ID= Convert.ToInt32(e.CommandArgument);
            //Urun.UpdateOnayKaldir();
            veriTabaniIslemleri.BaglantiBitir();
            YemekleriiGetir("deneme");
        }
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            //SqlCommand comm = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1, kategoriAdet=@p2 " +
            //    "where  Kategoriid=@p3", conn.baglanti());
            //comm.Parameters.AddWithValue("@p1", txtboxKategoriAd.Text);
            //comm.Parameters.AddWithValue("@p2", txtboxKategoriAdet.Text);
            //comm.Parameters.AddWithValue("@p3", id);
            //comm.ExecuteNonQuery();
            //conn.baglanti().Close();

        }

        protected void Unnamed_Command3(object sender, CommandEventArgs e)
        {

        }

        protected void btn_Ara_Command(object sender, CommandEventArgs e)
        {
            YemekleriiGetir("urunAdinaGore");
        }
    }
}