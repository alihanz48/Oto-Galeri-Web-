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
    public partial class WebForm4 : System.Web.UI.Page
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
        int fcs;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (fcs==1)
            {
                TextBox1.Focus();
            }
            else if (fcs==2)
            {
                TextBox2.Focus();
            }
            else
            {
                TextBox3.Focus();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("insert into iletisim(isim_soyisim,mail,mesaj) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", sql_baglanti.baglanti);
            komut.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Panel2.Visible = true;
            Timer1.Enabled = true;
        }

        protected void zmn_tick(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Timer1.Enabled = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            fcs = 1;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            fcs = 2;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            fcs = 3;
        }
    }
}