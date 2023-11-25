using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Yonetim
{
    public partial class kullanıcı_giriş : System.Web.UI.Page
    {
        SqlConnection Baglanti;
        SqlDataAdapter adapter;
        SqlCommand kmt;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {

            Baglanti = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");
            Baglanti.Open();
            kmt = new SqlCommand("select * from Uye where UyeE_Mail=@UyeE_Mail and UyeSifre=@UyeSifre", Baglanti);
            kmt.Parameters.AddWithValue("@UyeE_Mail", TbEposta.Text.ToString());
            kmt.Parameters.AddWithValue("@UyeSifre", TbSifre.Text.ToString());
            SqlDataReader oku = kmt.ExecuteReader();
            while (oku.Read())
            {
                string a = (oku["UyeE_Mail"].ToString());
                string b = (oku["UyeSifre"].ToString());


                if (a == TbEposta.Text && b == TbSifre.Text)
                {
                    //Burası kullanıcıId sini alıyor
                    Session["Adi"] = oku["UyeAdi"].ToString();

                    Response.Redirect("~/Yonetim/index.aspx");

                    Response.Write("nurufıjg9");
                }
                else
                {
                    LblMesaj.Text = "hatalı giris";
                }

            }

        }
    }
}