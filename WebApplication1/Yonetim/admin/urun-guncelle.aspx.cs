using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Yonetim.admin
{
    public partial class urun_guncelle1 : System.Web.UI.Page
    {


        SqlConnection bag = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            //ddlkategoriadi.text = datagridview1.currentrow.cells[1].value.tostring();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UrunGuncelle();



        }


        private void UrunGuncelle()
        {
            /*QueryString ile urunu guncellleme*/
            bag.Open();
            SqlCommand komut = new SqlCommand("UPDATE Urun Set KategoriId=@KategoriId, AltKategoriId=@AltKategoriId, MarkaId=@MarkaId,  UrunAdi=@UrunAdi, UrunFiyati=@UrunFiyati, UrunStok=@UrunStok, UrunAcıklama=@UrunAcıklama WHERE UrunKodu=@UrunKodu", bag);
            int SelectedId = Convert.ToInt32(Request.QueryString["UrunKodu"]);

            komut.Parameters.AddWithValue("@KategoriId", DdlKategoriAdi.SelectedValue);
            komut.Parameters.AddWithValue("@AltKategoriId", DdlAltKategori.SelectedValue);
            komut.Parameters.AddWithValue("@MarkaId", DdlMarka.SelectedValue);
            komut.Parameters.AddWithValue("@UrunKodu", SelectedId);
            komut.Parameters.AddWithValue("@UrunAdi", TbUrunAdi.Text);
            komut.Parameters.AddWithValue("@UrunFiyati", TbUrunFiyat.Text);
            komut.Parameters.AddWithValue("@UrunStok", TbUrunStok.Text);
            komut.Parameters.AddWithValue("@UrunAcıklama", TbUrunAcıklama.Text);

            komut.ExecuteNonQuery();
            bag.Close();


            /**/
            /*urun guncelleme*/

            bag.Open();
            komut = new SqlCommand("UPDATE UrunOzelik Set RenkId=@RenkId, BedenId=@BedenId, MateryalId=@MateryalId WHERE UrunId=@UrunId", bag);
            int UrunOzelikId = Convert.ToInt32(Request.QueryString["UrunKodu"]);

            komut.Parameters.AddWithValue("@UrunId", UrunOzelikId);
            komut.Parameters.AddWithValue("@RenkId", DdlRenk.SelectedValue);
            komut.Parameters.AddWithValue("@BedenId", DdlBeden.SelectedValue);
            komut.Parameters.AddWithValue("@MateryalId", DdlMateryal.SelectedValue);

            komut.ExecuteNonQuery();
            bag.Close();



        }
    }
}