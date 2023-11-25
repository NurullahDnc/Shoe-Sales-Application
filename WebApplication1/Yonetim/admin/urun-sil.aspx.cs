using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Yonetim.admin
{
    public partial class urun_sil : System.Web.UI.Page
    {
        SqlConnection bag = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            /*QueryString ile urunu silme*/
            bag.Open();
            int SelectedId = Convert.ToInt32(Request.QueryString["UrunKodu"]);

            SqlCommand komut = new SqlCommand("delete from Urun WHERE UrunKodu=@UrunKodu ", bag);
            komut.Parameters.AddWithValue("@UrunKodu", SelectedId);
            komut.ExecuteNonQuery();
            Response.Redirect("admin-urun.aspx");
            bag.Close();
            /**/




        }
    }
}