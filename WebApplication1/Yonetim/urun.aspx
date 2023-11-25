<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Layout.Master" AutoEventWireup="true" CodeBehind="urun.aspx.cs" Inherits="WebApplication1.Yonetim.ürün" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: auto;
            /*background-color: grey;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="urun.css" rel="stylesheet" />

    <section class="container">
        <div class="ust-bosluk-nav">
        </div>
        <div class="kategoriler-container">

            <div class="kategori-block">

                <select id="Select1" class="selected-card">
                    <option selected>kategori</option>
                    <option>Elektronik</option>
                    <option>Beyaz Esya</option>
                    <option>Ev Aletleri</option>

                </select>
                <!-- copy-->

                <select id="Select2" class="selected-card">
                    <option selected>marka </option>
                    <option>Apple</option>
                    <option>Arcelik</option>
                    <option>Lenovo</option>

                </select>
                <select id="Select3" class="selected-card">
                    <option selected>Cinsiyet </option>
                    <option>Erkek</option>
                    <option>Kadın</option>
                </select>

                <!-- copy-->

                <asp:Button CssClass="kategori-btn" ID="Button2" runat="server" Text="uygula" />
            </div>
        </div>




        <div class="auto-style1">
            <!--tum urun cekme-->
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ResimId" DataSourceID="UrunResimler">
                <ItemTemplate>
                    <!-- #include file="~\Yonetim\include-card\urun-card.html" -->

                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="UrunResimler" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="select Urun.UrunId ,Urun.UrunAdi,Urun.UrunFiyati,UrunResim.ResimId,UrunResim.Resim1,UrunResim.Resim2,UrunResim.Resim3,UrunResim.Resim4 from Urun,UrunResim where Urun.UrunId=UrunResim.ResimId"></asp:SqlDataSource>

            <!--Tum urunleri  cekme-->





            <!--QueryString, kategori gore veri cekme-->
            <asp:DataList ID="DataList3" runat="server" DataKeyField="UrunId" DataSourceID="kategori">
                <ItemTemplate>

                    <!-- #include file="~\Yonetim\include-card\urun-card.html" -->

                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="kategori" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="select Urun.UrunId ,Urun.UrunAdi,Urun.UrunFiyati,UrunResim.ResimId,UrunResim.Resim1,UrunResim.Resim2,UrunResim.Resim3,UrunResim.Resim4 from Urun,UrunResim where Urun.UrunId=UrunResim.ResimId and ([AltKategoriId] = @AltKategoriId)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="AltKategoriId" QueryStringField="kategori" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <!--QueryString, kategori gore veri cekme-->

        </div>

    </section>





</asp:Content>






