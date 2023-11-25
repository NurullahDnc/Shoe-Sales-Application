<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Layout.Master" AutoEventWireup="true" CodeBehind="urun-detay.aspx.cs" Inherits="WebApplication1.Yonetim.ürün_detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="urun-detay.css" rel="stylesheet" />

    <div class="ust-bosluk">
    </div>
    <header>
        <div >
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="UrunId" DataSourceID="urundetay">
                <ItemTemplate>

                    <!-- #include file="~/Yonetim/include-card/urun-detay-card.html" -->


                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="urundetay" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="select DISTINCT Urun.UrunId, Urun.UrunAdi, Urun.UrunFiyati, Urun.UrunAcıklama, UrunRenk.RenkAdi, UrunBeden.BedenNo, UrunMateryal.MateryalAdi, Marka.MarkaAdi, UrunResim.Resim1, UrunResim.Resim2, UrunResim.Resim3, UrunResim.Resim4   from Urun, UrunOzelik, UrunBeden, UrunRenk, UrunMateryal, Marka, UrunResim where Urun.UrunId =UrunOzelik.UrunOzelikId and UrunRenk.RenkId = UrunOzelik.RenkId and  UrunBeden.BedenId = UrunOzelik.UrunOzelikId and UrunMateryal.MateryalId=UrunOzelik.MateryalId  and  Urun.MarkaId = Marka.MarkaId and UrunResim.ResimId = Urun.UrunId
 and Urun.UrunId = (@UrunId)">

                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="UrunId" QueryStringField="urun" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>



        <!--SELECT Urun.UrunId, Urun.UrunAdi, Urun.UrunFiyati, Urun.UrunAcıklama,    UrunOzelik.UrunOzelikId, UrunOzelik.RenkId, UrunOzelik.BedenId, UrunOzelik.MateryalId,   UrunRenk.RenkAdi, UrunOzelik.RenkId FROM Urun, UrunOzelik, UrunRenk, UrunBeden, UrunMateryal, UrunResim WHERE Urun.UrunId = UrunOzelik.UrunOzelikId AND UrunRenk.UrunAdi=UrunOzelik.RenkId-->

        <!--urundetay-->

    </header>
    <hr class="hr" />


    <section>
        <div class="container-alt">
            <div class="a">




                <div class="ürün-yorum">
                    <h1>Ürün Degerlendirme</h1>
                    <div class="yorum-icerik">
                        <h4>Nurullah dinc <span>-05.04.2023</span></h4>
                        <p>ürünün kalitesi cok iyi ürünün kalitesi cok iyi ürünün kalitesi cok iyi</p>
                        <hr />
                    </div>
                    <div class="yorum-icerik">
                        <h4>Nurullah dinc <span>-05.04.2023</span></h4>
                        <p>ürünün kalitesi cok iyi ürünün kalitesi cok iyi ürünün kalitesi cok iyi</p>
                        <hr />
                    </div>


                </div>
            </div>

        </div>


    </section>


</asp:Content>
