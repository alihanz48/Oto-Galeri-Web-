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
    public partial class WebForm2 : System.Web.UI.Page
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
            if (Page.IsPostBack==false)
            {
                //sayfa da herhangi butona basıldığında tüm değişiklikler sıfırlanır
                //ispostback==false olduğunda buraya yazılan kodlar sayfa yenilendiğinde tekrar çalışmaz.
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql_baglanti.baglantikontrol();
            SqlCommand komut = new SqlCommand("insert into araclar(marka,model,yil,km,renk,motor,resim) VALUES('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "'," + TextBox2.Text + "," + TextBox3.Text+ ",'" + TextBox4.Text + "'," + TextBox5.Text.Replace(",", ".") + ",'" + TextBox6.Text + "')", sql_baglanti.baglanti);
            komut.ExecuteNonQuery();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}