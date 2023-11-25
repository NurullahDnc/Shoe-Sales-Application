using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebApplication1.DataSet1TableAdapters;
using System.Data;
using System.Reflection.Emit;

namespace WebApplication1.Yonetim.admin
{

    public partial class urun_guncelle : System.Web.UI.Page
    {
        SqlCommand komut;
        SqlConnection bag = new SqlConnection("Data Source=DESKTOP-C6HUCTV\\SQLEXPRESS;Initial Catalog=E-Ticaret-I;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {/**/
            //string sorgu = ("SELECT * FROM Marka");
            //SqlDataAdapter adtr = new SqlDataAdapter(sorgu, bag);
            //DataTable table = new DataTable();
            //adtr.Fill(table);
            ////DropDownList1.DataSource = table;




  

        }

        protected void urunEkle_Click(object sender, EventArgs e)
        {

            /*urun ekleme*/

            bag.Open();
            komut = new SqlCommand("insert into urun(KategoriId, AltKategoriId, MarkaId, UrunKodu, UrunAdi, UrunFiyati, UrunStok, UrunAcıklama, UrunTarih) values(@KategoriId, @AltKategoriId, @MarkaId, @UrunKodu, @UrunAdi, @UrunFiyat, @UrunStok, @UrunAcıklama, GetDate())", bag);
            komut.Parameters.AddWithValue("@KategoriId", DdlKategoriAdi.SelectedValue);
            komut.Parameters.AddWithValue("@AltKategoriId", DdlAltKategori.SelectedValue);
            komut.Parameters.AddWithValue("@MarkaId", DdlMarka.SelectedValue);
            komut.Parameters.AddWithValue("@UrunKodu", TbUrunKodu.Text);
            komut.Parameters.AddWithValue("@UrunAdi", TbUrunAdi.Text);
            komut.Parameters.AddWithValue("@UrunFiyat", TbUrunFiyat.Text);
            komut.Parameters.AddWithValue("@UrunStok", TbUrunStok.Text);
            komut.Parameters.AddWithValue("@UrunAcıklama", TbUrunAcıklama.Text);
            komut.Parameters.AddWithValue("@UrunTarih", Calendar1.SelectionMode);
            komut.ExecuteNonQuery();
            bag.Close();



            bag.Open();
            komut = new SqlCommand("insert into UrunOzelik(RenkId, BedenId, MateryalId) values(@RenkId, @BedenId, @MateryalId)", bag);
            komut.Parameters.AddWithValue("@RenkId", DdlRenk.SelectedValue);
            komut.Parameters.AddWithValue("@BedenId", DdlBeden.SelectedValue);
            komut.Parameters.AddWithValue("@MateryalId", DdlMateryal.SelectedValue);

            komut.ExecuteNonQuery();
            bag.Close();


        /**/   //bag.Open();
               //SqlCommand cmd = new SqlCommand("SELECT * FROM Urun WHERE UrunKodu = @UrunKodu ", bag);
               //cmd.Parameters.AddWithValue("@UrunKodu", TbUrunKodu.Text);
               //SqlDataReader dr = cmd.ExecuteReader();

        //if (dr.Read())
        //{

        //    Response.Write("Basarılı");
        //}
        //else
        //{
        //    Response.Write("Basarısız");
        //}
        //bag.Close();



        //if (FileUpload1.HasFile)
        //{
        //    FileUpload1.SaveAs(Server.MapPath("~/resim/"+FileUpload1.FileName));
        //    eticaretTableAdapters.UrunResimTableAdapter Urun = new eticaretTableAdapters.UrunResimTableAdapter();
        //    Urun.ResimEkle(1, FileUpload1.FileName);
        //    //bag.Open();
        //    //FileUpload1.SaveAs(Server.MapPath("~/resim/" + FileUpload1.FileName));
        //    //komut = new SqlCommand("insert into UrunResim(Resim1) values(@p1)", bag);
        //    //komut.ExecuteNonQuery();
        //    //komut.Parameters.AddWithValue("@p1", FileUpload1.FileName);
        //    //komut.Dispose();
        //    //bag.Close();


        //}
        //else
        //{
        //    Response.Write("Resim seçimediniz");

        //}

        


            /*resim ekleme*/
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~\\Yonetim\\images\\" + FileUpload1.FileName));

                eticaretTableAdapters.UrunResim2TableAdapter hak = new eticaretTableAdapters.UrunResim2TableAdapter();
                hak.ResimEkle(FileUpload1.FileName, FileUpload2.FileName, FileUpload3.FileName, FileUpload4.FileName);
            }
            else
            {
                Response.Write("Resim Seçmendiniz");
            }



            

    

        }

    }
}