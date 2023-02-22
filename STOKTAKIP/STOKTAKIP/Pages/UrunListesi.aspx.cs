﻿using System;
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
        string detay;
        protected void Page_Load(object sender, EventArgs e)
        {
            detay = Convert.ToString(Request.QueryString["DETAY"]);
            if (!Page.IsPostBack)
            {
                YemekleriiGetir("tumUrunleriGetir",detay);

            }
        }


        private void YemekleriiGetir(string yorumTuru, string detay)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            if (detay == "saglam")
            {
                urun.ID = -1;
                urun.Hasarli_mi = Convert.ToBoolean(0);
            }
            else if (detay == "hasarli")
            {
                urun.ID = -1;
                urun.Hasarli_mi = Convert.ToBoolean(1);
            }
            else
            {
                urun.ID =1;
                urun.Hasarli_mi = true;
            }
            DataTable dt = urun.TumunuGetir();
            DataList1.DataSource = dt;
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
            YemekleriiGetir("tumUrunleriGetir",detay);
        }

        protected void btn_Ara_Command(object sender, CommandEventArgs e)
        {
            YemekleriiGetir("urunAdinaGore",detay);
        }

        protected void btn_StoktaBulunmayanlar_Command(object sender, CommandEventArgs e)
        {
            VeriTabaniIslemleri veriTabaniIslemleri = new VeriTabaniIslemleri();
            veriTabaniIslemleri.BaglantiBaslat();
            Urun urun = new Urun(veriTabaniIslemleri);
            if (detay == "saglam")
            {
                urun.ID = -1;
                urun.Hasarli_mi = Convert.ToBoolean(0);
            }
            else if (detay == "hasarli")
            {
                urun.ID = -1;
                urun.Hasarli_mi = Convert.ToBoolean(1);
            }
            else
            {
                urun.ID = 1;
                urun.Hasarli_mi = true;
            }
            DataTable dt = urun.StoguBitenleriGetir();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            veriTabaniIslemleri.BaglantiBitir();
        }
    }
}