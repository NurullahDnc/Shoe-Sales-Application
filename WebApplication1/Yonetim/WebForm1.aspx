<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.Yonetim.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">HABER SİTESİ
                    </td>
                </tr>
                <tr>

                    <td class="auto-style3" style="">
                        <!--datalist-->
                       



                                <!--kategori-->
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="repeater">

                                    <ItemTemplate>
                                        <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("KategoriAdi") %>' />


                                        <!--altkategori-->
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="repeater">

                                            <ItemTemplate>
                                        <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("AltKategoriAdi") %>' />

                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="repeater" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="select AltKategoriAdi from Kategori INNER JOIN AltKategori ON AltKategori.KategoriId=Kategori.KategoriId WHERE AltKategori.KategoriId=1"></asp:SqlDataSource>
                                        <!--altkategori-->

                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="repeater" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="select DISTINCT Kategori.KategoriAdi from  Kategori where Kategori.KategoriId=1"></asp:SqlDataSource>
                                <!--kategori-->





                       

                    </td>


                </tr>
            </table>


        </div>

    </form>




</body>
</html>
