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
    public partial class kayitol : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text==TextBox3.Text)
            {
                sql_baglanti.baglantikontrol();
                SqlCommand komut = new SqlCommand("Insert into login(username,password,type) values('"+TextBox1.Text+"','"+sha256.ComputeSha256Hash(TextBox2.Text)+"','NULL')",sql_baglanti.baglanti);
                komut.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }
    }
}