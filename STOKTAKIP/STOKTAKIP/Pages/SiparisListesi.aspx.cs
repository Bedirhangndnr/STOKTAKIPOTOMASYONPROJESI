using BusinessLayer.Entity;
using BusinessLayer.Work;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STOKTAKIP.Pages
{
    public partial class SiparisListesi : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!Page.IsPostBack)
            {
                SayfayiYukle();
            }
        }
        public void SayfayiYukle()
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Siparisler siparisler = new Siparisler(veriTabaniIslemleri);
            DataTable dt = siparisler.TumunuGetir();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            veriTabaniIslemleri.BaglantiBitir();
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {


        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Siparisler siparisler = new Siparisler(veriTabaniIslemleri);
            siparisler.ID = Convert.ToInt32(e.CommandArgument);
            siparisler.Delete();
            veriTabaniIslemleri.BaglantiBitir();
            SayfayiYukle();
        }
    }
}