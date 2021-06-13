using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace Face
{
    public class Util
    {
        /*
         İşlem Basarılı ise 1 döndürecek metod 
         işlem herhangi degeri etkilemezse 0 döndürecek
         işlem de hata meydana gelirse -1 geri dönecek
         
         */
        //public static string cnnstring = "Server=.;Database=OtobusOtomasyon;uid=sinanarslan;pwd=12345;";
        public static string cnnstring = "Data Source=ALEMCIBOB;Initial Catalog=OtobusOtomasyon;Integrated security=true";
        public static int Yurut(SqlCommand cmd)
        {
            int etkilenensatirsayisi = -1;
            try
            {
                cmd.Connection.Open();
               etkilenensatirsayisi= cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Hataci.YeniHataKaydi(ex);
              
            }
            finally
            {
                cmd.Connection.Close();
            }
            return etkilenensatirsayisi;
        }
    }
}
