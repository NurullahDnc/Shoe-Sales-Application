using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace WebApplication1.Yonetim.admin
{
    public partial class admin_urun : System.Web.UI.Page
    {
        SqlConnection bag = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            /*veritabanından urun verileri cekme*/

            bag.Open();
            SqlCommand komut = new SqlCommand("select DISTINCT Urun.UrunId, UrunKodu, Kategori.KategoriAdi, AltKategori.AltKategoriAdi, Marka.MarkaAdi, Urun.UrunAdi, Urun.UrunFiyati,UrunStok, Urun.UrunAcıklama, UrunRenk.RenkAdi, UrunBeden.BedenNo, UrunMateryal.MateryalAdi, UrunTarih from Urun, Kategori, AltKategori, Marka, UrunOzelik, UrunBeden, UrunRenk, UrunMateryal where Urun.UrunId =UrunOzelik.UrunOzelikId and UrunRenk.RenkId = UrunOzelik.RenkId and  UrunBeden.BedenId = UrunOzelik.UrunOzelikId and UrunMateryal.MateryalId=UrunOzelik.MateryalId   and Kategori.KategoriId = Urun.KategoriId and AltKategori.AltKategoriId = Urun.AltKategoriId  and  Urun.MarkaId = Marka.MarkaId", bag);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bag.Close();
            /**/





        }
        protected void ImageGuncelle_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void ImageSil_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }


}