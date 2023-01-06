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
    public class Urun
    {
        private VeriTabaniIslemleri veritabaniIslem;
        public Urun(VeriTabaniIslemleri veriTabanİIslemleri)
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
        private int kod;
        public int Kod
        {
            get { return kod; }
            set { kod = value; }
        }
        private string isim;
        public string Isim
        {
            get { return isim; }
            set { isim = value; }
        }
        private int sayi;
        public int Sayi
        {
            get { return sayi; }
            set { sayi = value; }
        }
        private int stokGuncllemeMiktari;
        public int StokGuncllemeMiktari
        {
            get { return stokGuncllemeMiktari; }
            set { stokGuncllemeMiktari = value; }
        }
        private int urun_agirligi;
        public int Urun_agirligi
        {
            get { return urun_agirligi; }
            set { urun_agirligi = value; }
        }
        private bool hasarli_mi;
        public bool Hasarli_mi
        {
            get { return hasarli_mi; }
            set { hasarli_mi = value; }
        }
        public DataTable SatirGetir()
        {
            veritabaniIslem.spAd = "sp_urunlerigetir_idile";
            veritabaniIslem.AddSqlParameter("@id", id);
            veritabaniIslem.Calistir();
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }
        public void Delete()
        {
            veritabaniIslem.spAd = "sp_urunsil";
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
            veritabaniIslem.spAd = "sp_urunlerigetir";
            veritabaniIslem.AddSqlParameter("@id", id);
            veritabaniIslem.AddSqlParameter("@hasarli_mi", hasarli_mi);
            try
            {
                veritabaniIslem.Calistir();
            }
            catch (Exception)
            {

                throw;
            }
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }
        public DataTable StoguBitenleriGetir()
        {
            veritabaniIslem.spAd = "sp_tumunugetir_stogubitmisurunler";
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }
        public DataTable UrunKodunaGoreSatirGetir()
        {

            veritabaniIslem.spAd = "sp_urunkodunagoresatirgetir";
            veritabaniIslem.AddSqlParameter("@urun_kodu", Kod);

            veritabaniIslem.Calistir();
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }
        public SqlDataReader GetById()
        {
            throw new NotImplementedException();
        }
        public DataTable UrunAdinaGoreGetir()
        {
            veritabaniIslem.spAd = "sp_urunadinagoregetir";
            veritabaniIslem.AddSqlParameter("@urun_adi", isim);
            veritabaniIslem.Calistir();
            veritabaniIslem.TabloGetir();
            return veritabaniIslem.VeriTablosu;
        }

        public void Insert()
        {
            veritabaniIslem.spAd = "sp_urunekle";
            veritabaniIslem.AddSqlParameter("@urun_adi", isim);
            veritabaniIslem.AddSqlParameter("@urun_sayisi", sayi);
            veritabaniIslem.AddSqlParameter("@urun_kodu", kod);
            veritabaniIslem.AddSqlParameter("@urun_agirligi", urun_agirligi);
            veritabaniIslem.AddSqlParameter("@hasarli_mi", hasarli_mi);
            try
            {
                veritabaniIslem.Calistir();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void StokGuncelle()
        {
            veritabaniIslem.spAd = "sp_stokguncelle";
            veritabaniIslem.AddSqlParameter("@stok_guncelleme_miktari", stokGuncllemeMiktari);
            veritabaniIslem.AddSqlParameter("@urun_kodu", kod);

            try
            {
                veritabaniIslem.Calistir();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update()
        {
            veritabaniIslem.spAd = "sp_urunguncelle";
            veritabaniIslem.AddSqlParameter("@id", id);
            veritabaniIslem.AddSqlParameter("@urun_adi", isim);
            veritabaniIslem.AddSqlParameter("@urun_sayisi", sayi);
            veritabaniIslem.AddSqlParameter("@urun_kodu", kod);
            veritabaniIslem.AddSqlParameter("@urun_agirligi", urun_agirligi);
            veritabaniIslem.AddSqlParameter("@hasarli_mi", hasarli_mi);
            try
            {
                veritabaniIslem.Calistir();
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}