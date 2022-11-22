using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Work
{

    public class VeriTabaniIslemleri
    {
        SqlCommand comm = new SqlCommand();
        private SqlConnection conn_;
        List<SqlParameter> sqlParameters_ = new List<SqlParameter>();
        public string spAd;

        public SqlConnection Conn
        {
            get { return conn_; }
            set { conn_ = value; }
        }
        public VeriTabaniIslemleri()
        {
            try
            {
                conn_ = new SqlConnection("Server=NAHRIDEBREN\\SQLEXPRESS;Database=DB_StokTakip;Trusted_Connection=Yes;");
                comm.Connection = conn_;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public SqlConnection BaglantiBaslat()
        {
            try
            {
                conn_.Open();
                return conn_;
            }
            catch (Exception)
            {
                conn_.Close();
                return null;
            }
        }
        public SqlConnection BaglantiBitir()
        {
            try
            {
                conn_.Close();
                return conn_;
            }
            catch (Exception)
            {
                throw;
                return null;
            }
        }

        public void Calistir()
        {
            DeleteSqlParameters();
            for (int i = 0; i < sqlParameters_.Count; i++)
            {
                comm.Parameters.AddWithValue(sqlParameters_[i].ParameterName, sqlParameters_[i].Value);
            }
            comm.CommandType = System.Data.CommandType.StoredProcedure;
            comm.CommandText = spAd;
            comm.ExecuteNonQuery();
            //comm.ExecuteNonQuery();
            sqlParameters_.Clear();

        }
        private DataTable veriTablosu = new DataTable();
        public DataTable VeriTablosu
        {
            get { return veriTablosu; }
            set { veriTablosu = value; }
        }
        public void TabloGetir()
        {
            comm.CommandText = spAd;
            comm.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(comm);
            da.Fill(veriTablosu);
        }


        public void AddSqlParameter(string parameterName, object parameterValue)
        {

            sqlParameters_.Add(new SqlParameter(parameterName, parameterValue));
        }
        public void DeleteSqlParameters()
        {
            if (comm.Parameters.Count > 0)
            {
                comm.Parameters.Clear();
            }
        }
    }
}
