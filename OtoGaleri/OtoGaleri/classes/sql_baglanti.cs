using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace OtoGaleri.classes
{
    public class sql_baglanti
    {
        public static SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-TNBH16J;Initial Catalog=otogaleri;Integrated Security=True");
        public static void baglantikontrol()
        {
            if (baglanti.State==System.Data.ConnectionState.Closed)
            {
                baglanti.Open();
            }
        }
    }
}