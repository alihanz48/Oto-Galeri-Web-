using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using OtoGaleri.classes;

namespace OtoGaleri
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        void Page_PreInit(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["user"]) == true)
            {
                this.MasterPageFile = "~/user_online.Master";
            }
            else
            {
                this.MasterPageFile = "~/site.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("Select * from araclar",sql_baglanti.baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            oku.Close();

        }

    }
}