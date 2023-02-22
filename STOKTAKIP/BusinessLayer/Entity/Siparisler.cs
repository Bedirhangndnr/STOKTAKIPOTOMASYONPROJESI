using BusinessLayer.Work;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Entity
{
    public class Siparisler
    {
        private VeriTabaniIslemleri veritabaniIslem;
        public Siparisler(VeriTabaniIslemleri veriTabanİIslemleri)
        {
            veritabaniIslem = veriTabanİIslemleri;
        }
        protected VeriTabaniIslemleri VeritabaniIslem
        {
            get { return veritabaniIslem; }
            set { veritabaniIslem = value; }
        }
        private int id;
        public int ID
        {
            get { return id; }
            set { id = value; }
        }
        private int urun_id;
        public int Urun_id
        {
            get { return urun_id; }
            set { urun_id = value; }
        }
        private string siparis_durumu;
        public string Siparis_durumu
        {
            get { return siparis_durumu; }
            set { siparis_durumu = value; }
        }
        private DateTime siparis_tarihi;
        public DateTime Siparis_tarihi
        {
            get { return siparis_tarihi; }
            set { siparis_tarihi = value; }
        }
        private DateTime siparis_teslim_tarihi;
        public DateTime Siparis_teslim_tarihi
        {
            get { return siparis_teslim_tarihi; }
            set { siparis_teslim_tarihi = value; }
        }
       
        public DataTable SatirGetir()
        {
            veritabaniIslem.spAd = "sp_siparisgetir_id";
            veritabaniIslem.AddSqlParameter("@id", id);
            veritabaniIslem.Calistir();
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }
        public void Delete()
        {
            veritabaniIslem.spAd = "sp_siparisler_sil";
            veritabaniIslem.AddSqlParameter("@id", id);
            try
            {
                veritabaniIslem.Calistir();
            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataTable TumunuGetir()
        {
            veritabaniIslem.spAd = "sp_siparisler_tumunugetir";
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }

        public void Insert()
        {

        }
        public void Update()
        {
        }

    }
}