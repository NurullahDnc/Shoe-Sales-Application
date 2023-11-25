<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/admin/admin-layout.Master" AutoEventWireup="true" CodeBehind="urun-guncelle.aspx.cs" Inherits="WebApplication1.Yonetim.admin.urun_guncelle1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .urun-container {
            width: 85%;
            margin-left: 16%;
        }

        input[type=text], select {
            width: 50%;
            padding: 12px 20px;
            display: flex;
            flex-direction: column;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-urun {
            width: 30%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 2rem 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            .btn-urun:hover {
                background-color: #45a049;
            }

        /*    div {
            border-radius: 5px;
            background-color: #f2f2f2;
        }*/

        .urun-gorsel {
            display: flex;
            flex-direction: column;
        }

            .urun-gorsel label {
                padding: 0.5rem 0;
            }

            .urun-gorsel .fileupload {
                margin-bottom: 1rem;
            }
    </style>

    <div class="urun-container">


        <h3>Ürün Güncelle</h3>

        <div>
            <formview action="/action_page.php">



                <label for="fname">Kategori</label>
                <asp:DropDownList ID="DdlKategoriAdi" runat="server" DataSourceID="Kategori" DataTextField="KategoriAdi" DataValueField="KategoriId">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="Kategori" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [Kategori]"></asp:SqlDataSource>


                <br />
                <label for="lname">Alt Kategorti Adi</label>
                <asp:DropDownList ID="DdlAltKategori" runat="server" DataSourceID="AltKategori" DataTextField="AltKategoriAdi" DataValueField="KategoriId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="AltKategori" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [AltKategori]"></asp:SqlDataSource>

                <br />
                <label for="lname">Marka</label>
                <asp:DropDownList ID="DdlMarka" runat="server" DataSourceID="Marka" DataTextField="MarkaAdi" DataValueField="MarkaId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Marka" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [Marka]"></asp:SqlDataSource>


                <!---->
                <br />
                <label for="lname">Ürün Adi</label>
                <asp:TextBox ID="TbUrunAdi" runat="server" placeholder="Ürün Adi" type="text" class="a" name="firstname"></asp:TextBox>

                <br />
                <label for="lname">Ürün Fiyat</label>
                <asp:TextBox ID="TbUrunFiyat" runat="server" placeholder="Ürün Fiyat" type="text" class="a" name="firstname"></asp:TextBox>

                <br />
                <label for="lname">Ürün Stok</label>
                <asp:TextBox ID="TbUrunStok" runat="server" placeholder="Ürün Stok" type="text" class="a" name="firstname"></asp:TextBox>

                <br />
                <label for="lname">Ürün Acıklama</label>
                <asp:TextBox ID="TbUrunAcıklama" runat="server" placeholder="Ürün Acıklama" type="text" class="a" name="firstname"></asp:TextBox>


                <!---->
                <br />
                <label for="lname">Ürün Renk</label>
                <asp:DropDownList ID="DdlRenk" runat="server" DataSourceID="UrunRenk" DataTextField="RenkAdi" DataValueField="RenkId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="UrunRenk" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [UrunRenk]"></asp:SqlDataSource>
                <br />

                <label for="lname">Ürün Beden</label>
                <asp:DropDownList ID="DdlBeden" runat="server" DataSourceID="UrunBeden" DataTextField="BedenNo" DataValueField="BedenId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="UrunBeden" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [UrunBeden]"></asp:SqlDataSource>


                <br />
                <label for="lname">Ürün Materyal</label>
                <asp:DropDownList ID="DdlMateryal" runat="server" DataSourceID="UrunMateryal" DataTextField="MateryalAdi" DataValueField="MateryalId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="UrunMateryal" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [UrunMateryal]"></asp:SqlDataSource>



                <!---->
                <br />
                <label for="lname">Ürün Ekleme Tarihi</label>

                <asp:Calendar ID="Calendar1" runat="server" SelectedDate="05/22/2023 00:55:27"></asp:Calendar>

                <div class="urun-gorsel">
                    <br />
                    <label for="lname">Ürün Gorsel-1</label>
                    <asp:FileUpload ID="FileUpload1" CssClass="fileupload" runat="server" />

                    <br />
                    <label for="lname">Ürün Gorsel-2</label>
                    <asp:FileUpload ID="FileUpload2" CssClass="fileupload" runat="server" />

                    <br />
                    <label for="lname">Ürün Gorsel-3</label>
                    <asp:FileUpload ID="FileUpload3" CssClass="fileupload" runat="server" />

                    <br />
                    <label for="lname">Ürün Gorsel-4</label>
                    <asp:FileUpload ID="FileUpload4" CssClass="fileupload" runat="server" />

                    <br />
                    <br />

                </div>

                <asp:Button CssClass="w3-btn w3-ripple w3-green btn-urun" ID="Button1" runat="server" Text="Ürün Güncelle" OnClick="Button1_Click" />

            </formview>
        </div>
    </div>
</asp:Content>
