<%@ Page Title="" Language="C#" MasterPageFile="Layout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="İndex.css" rel="stylesheet" />

    <header class="header">
        <div class="img-kapsayıcı">
            <img src="images/kadın-giyim.jpg" class="Header-image" id="Button1" />
        </div>
        <div class="header-content">

            <div class="header-text">Yeni Sezonda Kaçırılmayacak Fırsatlar  </div>
            <a href="admin/admin-index.aspx">
                <input class="header-btn" type="button" name="button" value="Hemen Alışverişe Başla" />
            </a>
        </div>

    </header>
    <!--section-->
    <!--populer-urunler-->
    <section>
        <div class="container">
            <div class="populer-container">
                <div class="populer-title">
                    <h2>Populer Ürunler  </h2>
                </div>
                <!--urun-card sayfasından ınculute sayesinde verileri cekiyor-->
                <asp:DataList ID="DataList3" runat="server" DataKeyField="PopulerId" DataSourceID="SqlDataPopulerUrun" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <!-- #include file="~/Yonetim/include-card/anasayfa-urun-card.html" -->
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataPopulerUrun" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [PopulerUrun]"></asp:SqlDataSource>


            </div>
        </div>
    </section>
    <!--populer-urunler-->


    <!--marka-->
    <section>
        <div class="container">
            <div class="marka-container">
                <div class="marka-title">
                    <h2>Markalar</h2>
                </div>

                <asp:DataList ID="DataList2" runat="server" DataKeyField="MarkaId" DataSourceID="SqlDataMarka" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <!-- #include file="~/Yonetim/include-card/marka-card.html" -->
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataMarka" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [Marka]"></asp:SqlDataSource>


            </div>
    </section>
    <!--marka-->

    <!--sana ozel-->
    <section>
        <!--container ana kapsayıcı sana-ozel-container arka paln kaplıyor (renk) sana-ozel-center resmi ortalıyor div icide resim-->
        <div class="container">
            <div class="sana-ozel-container">
                <div class="sana-ozel-title">
                    <h2>Burda Her Şey Sana Ozel</h2>
                </div>
                <div class="sana-ozel-center">
                    <a href="#">
                        <img src="images/format_webp.jpg" class="sana-ozel-image" alt="" />
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--sana ozel-->
    <!--son gezdiklerim-->
    <section class="container">
        <div class="populer-container">
            <div class="populer-title">
                <h2>Son Gezdiklerim</h2>
            </div>
            <div class="populer-card">
                <a href="#">
                    <img src="images/Başlıksız-1.png" class="populer-image" alt="" />
                    <div>
                        <p class="populer-ürünad">Apple Iphone 14 Pro Max 256 gb Derin Mor</p>
                        <h5 class="populer-indirim">Son 14 Günün En Düşük Fiyatı!</h5>
                        <h3 class="populer-Ürün-fiyatı">58.999 TL</h3>
                    </div>
                </a>
            </div>
            <!--copy-->

            <div class="populer-card">
                <a href="#">
                    <img src="images/Başlıksız-1.png" class="populer-image" alt="" />
                    <div>
                        <p class="populer-ürünad">Apple Iphone 14 Pro Max 256 gb Derin Mor</p>
                        <h5 class="populer-indirim">Son 14 Günün En Düşük Fiyatı!</h5>
                        <h3 class="populer-Ürün-fiyatı">58.999 TL</h3>
                    </div>
                </a>
            </div>
            <div class="populer-card">
                <a href="#">
                    <img src="images/Başlıksız-1.png" class="populer-image" alt="" />
                    <div>
                        <p class="populer-ürünad">Apple Iphone 14 Pro Max 256 gb Derin Mor</p>
                        <h5 class="populer-indirim">Son 14 Günün En Düşük Fiyatı!</h5>
                        <h3 class="populer-Ürün-fiyatı">58.999 TL</h3>
                    </div>
                </a>
            </div>
            <div class="populer-card">
                <a href="#">
                    <img src="images/Başlıksız-1.png" class="populer-image" alt="" />
                    <div>
                        <p class="populer-ürünad">Apple Iphone 14 Pro Max 256 gb Derin Mor</p>
                        <h5 class="populer-indirim">Son 14 Günün En Düşük Fiyatı!</h5>
                        <h3 class="populer-Ürün-fiyatı">58.999 TL</h3>
                    </div>
                </a>
            </div>
            <div class="populer-card">
                <a href="#">
                    <img src="images/Başlıksız-1.png" class="populer-image" alt="" />
                    <div>
                        <p class="populer-ürünad">Apple Iphone 14 Pro Max 256 gb Derin Mor</p>
                        <h5 class="populer-indirim">Son 14 Günün En Düşük Fiyatı!</h5>
                        <h3 class="populer-Ürün-fiyatı">58.999 TL</h3>
                    </div>
                </a>
            </div>
            <!--copy-->
        </div>
    </section>
    <!--son gezdiklerim-->

    <!--kampanya gorsel-->
    <section class="container">

        <div class="kampanya-container">
            <div class="kampanya-card">
                <img src="images/pantolon.jpg" class="" alt="Alternate Text" />
                <div class="kampanya-btn">
                    <a href="#">
                        <input class="kampanya-btn" type="button" name="button" value="Hemen İncele" />
                    </a>
                </div>
            </div>

            <!--copy-->
            <div class="kampanya-card">
                <img src="images/kadın-giyim.jpg" class="" alt="Alternate Text" />
                <div class="kampanya-btn">
                    <a href="#">
                        <input class="kampanya-btn" type="button" name="button" value="Hemen İncele" />
                    </a>
                </div>
            </div>
            <div class="kampanya-card">
                <img src="images/pantolon.jpg" class="" alt="Alternate Text" />
                <div class="kampanya-btn">
                    <a href="#">
                        <input class="kampanya-btn" type="button" name="button" value="Hemen İncele" />
                    </a>
                </div>
            </div>
            <div class="kampanya-card">
                <img src="images/kadın-giyim.jpg" class="" alt="Alternate Text" />
                <div class="kampanya-btn">
                    <a href="#">
                        <input class="kampanya-btn" type="button" name="button" value="Hemen İncele" />
                    </a>
                </div>
            </div>
            <!--copy-->

        </div>


    </section>
    <!--kampanya gorsel-->









</asp:Content>

