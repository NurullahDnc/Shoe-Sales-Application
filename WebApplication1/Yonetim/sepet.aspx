<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Layout.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="WebApplication1.Yonetim.sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="sepet.css" rel="stylesheet" />

    <div class="container">
        <div class="üst-bosluk">
        </div>

        <div class="sepet-container">
            <div class="baslık-sepet">
                <h5>Sepetim</h5>
            </div>

            <div class="sepet-row">

                <div class="sepet-card-container">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSepet" DataKeyField="SepetId">
                        <ItemTemplate>
                            <!-- #include file="~/Yonetim/include-card/sepet-card.html" -->

                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSepet" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [Sepet]"></asp:SqlDataSource>

                </div>





                <div class="siparis-ozet-container">

                    <div class="siparis-ozet">
                        <h3 class="siparis-ozet-title">Sipariş Özeti</h3>
                        <div class="sepet-hr">
                            <hr />
                        </div>





                        <table <%--border="1"--%> class="siparis-container">

                            <tr class="siparis-tutar">
                                <td>
                                    <p>Sipariş Tutar</p>
                                </td>
                                <td>
                                    <p>59.000</p>
                                </td>
                            </tr>
                            <tr class="kargo-tutar">
                                <td>
                                    <p>kargo</p>
                                </td>
                                <td>
                                    <p>59.000</p>
                                </td>
                            </tr>

                            <tr class="toplam-tutar">
                                <td>
                                    <p>Toplam</p>
                                </td>
                                <td>
                                    <p>59.000</p>
                                </td>
                            </tr>
                        </table>
                        <div class="kupon">
                            <input class="kupon-text" type="text" placeholder="Kodu Girin" />
                            <input class="kupon-buton" type="button" value="Kullan" />
                        </div>
                        <div class="odeme-btn">
                            <input type="button" class="btn" value="Satın Al" />
                        </div>


                    </div>

                </div>

            </div>
        </div>

        <div class="alt-sepet">
            <h2>alt-sepet</h2>
        </div>
    </div>




</asp:Content>
