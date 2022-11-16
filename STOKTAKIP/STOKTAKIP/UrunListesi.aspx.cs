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
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            SqlDataReader sqlDataReader = urun.GetAll();
            DataList1.DataSource = sqlDataReader;
            DataList1.DataBind();
            veriTabaniIslemleri.BaglantiBitir();
        }


        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            urun.ID = Convert.ToInt32(e.CommandArgument);
            urun.Delete();
            veriTabaniIslemleri.BaglantiBitir();
            YemekleriiGetir("tumUrunleriGetir");
        }

        protected void btn_Ara_Command(object sender, CommandEventArgs e)
        {
            YemekleriiGetir("urunAdinaGore");
        }
    }
}