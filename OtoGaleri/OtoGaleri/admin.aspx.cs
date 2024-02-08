using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using OtoGaleri.classes;

namespace OtoGaleri
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["admin"])==true)
            {
                if (Page.IsPostBack == false)
                {
                    veri_al();
                }
            }
            else
            {
                Response.Redirect("anasayfa.aspx");
            }
        }

        protected void veri_al()
        {
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("Select * from araclar", sql_baglanti.baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            SqlDataReader oku = komut.ExecuteReader();
            DropDownList3.DataTextField = "id";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataSource = oku;
            DropDownList3.DataBind();
            oku.Close();
            oku = komut.ExecuteReader();
            DropDownList2.DataTextField = "id";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataSource = oku;
            DropDownList2.DataBind();
            oku.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("insert into araclar(marka, model, yil, km, renk, motor, resim) VALUES('" + TextBox1.Text+"','"+TextBox2.Text+"',"+TextBox3.Text+","+TextBox4.Text+",'"+TextBox5.Text+"',"+TextBox6.Text.Replace(",",".")+",'"+TextBox7.Text+"')",sql_baglanti.baglanti);
            komut.ExecuteNonQuery();
            veri_al();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            string t="";
            if (DropDownList1.SelectedValue == "marka"|| DropDownList1.SelectedValue == "model"|| DropDownList1.SelectedValue == "renk"|| DropDownList1.SelectedValue == "resim")
            {
                t = "'";
            }
            SqlCommand komut = new SqlCommand("Update araclar set " + DropDownList1.SelectedValue + "=" + t + (DropDownList1.SelectedValue == "motor" ? TextBox8.Text.Replace(",", ".") : TextBox8.Text) + t + " where id=" + DropDownList3.SelectedValue,sql_baglanti.baglanti);
            komut.ExecuteNonQuery();
            veri_al();
            TextBox8.Text = "";
        }

    }
}