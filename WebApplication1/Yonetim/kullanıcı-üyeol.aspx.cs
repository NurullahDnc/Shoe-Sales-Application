using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Yonetim
{
    public partial class kullanıcı_üyeol : System.Web.UI.Page
    {
        SqlCommand komut;
        SqlConnection bag = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUyeOl_Click(object sender, EventArgs e)
        {




            //bag.Open();
            //komut = new SqlCommand("insert into Uye(UyeAdi, UyeSoyadi, UyeTelefonNo, UyeCinsiyet, UyeE_Mail, UyeSifre) values(@UyeAdi, @UyeSoyadi, @UyeTelefonNo, @UyeCinsiyet, @UyeE_Mail, @UyeSifre)", bag);
            //komut.Parameters.AddWithValue("@UyeSoyadi", TbUyeAdi.Text);
            //komut.Parameters.AddWithValue("@BedenId",  TbUyeSoyadi.Text);
            //komut.Parameters.AddWithValue("@MateryalId", TbUyeTelefonNo.Text);

            //komut.ExecuteNonQuery();
            //bag.Close();


        }
    }
}