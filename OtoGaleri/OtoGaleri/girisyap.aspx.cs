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
    public partial class WebForm5 : System.Web.UI.Page
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
          
        }

        public string username="";

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("Select * from login where username='"+TextBox1.Text+"' and password='"+sha256.ComputeSha256Hash(TextBox2.Text)+"'",sql_baglanti.baglanti);
            SqlDataReader kontrol = komut.ExecuteReader();
            int k = 0;
            string grs ="";
            string kad = "";
            while (kontrol.Read())
            {
                k++;
                grs = kontrol["type"].ToString();
                kad = kontrol["username"].ToString();
            }
            kontrol.Close();
            if (k==0)
            {
                Panel1.Visible = true;
            }
            else
            {
                if (grs=="admin")
                {
                    Session.Add("admin",true);
                    Session.Add("user", false);
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Session.Add("admin", false);
                    Session.Add("user", true);
                    Session.Add("username",kad);
                    username = TextBox1.Text;
                    Response.Redirect("anasayfa.aspx");
                }
                
            }
        }
    }
}