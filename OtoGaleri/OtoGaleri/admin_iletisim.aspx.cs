using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using OtoGaleri.classes;

namespace OtoGaleri
{
    public partial class admin_iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["admin"]) == true)
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
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("Select * from iletisim", sql_baglanti.baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("delete from iletisim where id="+GridView1.SelectedRow.Cells[1].Text,sql_baglanti.baglanti);
            komut.ExecuteNonQuery();
            veri_al();
        }
    }
}