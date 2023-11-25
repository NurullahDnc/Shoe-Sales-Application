<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/admin/admin-layout.Master" AutoEventWireup="true" CodeBehind="admin-urun.aspx.cs" Inherits="WebApplication1.Yonetim.admin.admin_urun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 0px solid #dddddd;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }




        .containers {
            width: 85%;
            height: 100vh;
            margin-left: 15%;
        }

        .header-container {
            width: 100%;
            padding: 1.5rem 0;
            display: flex;
            justify-content: space-between;
        }

        .btn-ekle {
            border-radius: 10px;
        }

        .search {
            width: 55%;
            background-color: white;
            border-radius: 5px;
            transition: 0.5s;
        }

            .search:focus {
                width: 75%;
                outline: none;
            }

        .fa-search {
            font-size: 1.5rem;
            padding: 0 0.3rem;
        }


        .auto-style1 {
            width: 100%;
            height: 77px;
        }

            .auto-style1 tr {
                max-height: 5rem;
                overflow: hidden;
            }

        .islem-image{
            font-size: 5rem;
            margin: 0.2rem;
        }


        .tbl-urun-number-short {
            width: 5%;
            text-align: center;
/*            background-color: darkgoldenrod;
*/        }
          .tbl-urun-number-long {
            width: 10%;
            text-align: center;
/*            background-color: gray;
*/        }

        .tbl-urun-adi-short {
            width: 5%;
            font-size: 1rem;
            text-align: center;
/*            background-color: darkorchid;
*/        }
           .tbl-urun-adi-long {
            width: 20%;
            font-size: 1rem;
            text-align: center;
/*            background-color: rebeccapurple;
*/        }

    </style>


    <div class="w3-container containers ">

        <div class="header-container ">
            <div class="btn-ekle">
                <a href="urun-ekle.aspx">
                    <input class="w3-btn w3-ripple w3-green w3-round-xlarge" type="button" value="Ürün Ekle" />

                </a>
            </div>
            <div class="box">
                <input type="text" class="search" placeholder="Ara..">
                <a href="#">
                    <i class="fa fa-search " aria-hidden="true"></i>
                </a>

            </div>
        </div>

        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <th class="tbl-urun-number-short">
                        <asp:Label ID="Label14" runat="server" Text="Ürün Id"></asp:Label>
                    </th>
                    <th class="tbl-urun-number-short">
                        <asp:Label ID="Label1" runat="server" Text="Ürün Kodu"></asp:Label>
                    </th>
                     <th class="tbl-urun-adi-short">
                        <asp:Label ID="Label28" runat="server" Text="Kategori Adi"></asp:Label>
                    </th>
                    <th class="tbl-urun-adi-short">
                        <asp:Label ID="Label2" runat="server" Text="AltKategori Adi"></asp:Label>
                    </th>         
                     <th class="tbl-urun-adi-short">
                        <asp:Label ID="Label23" runat="server" Text="Marka Adi"></asp:Label>
                    </th>
                    <th class="tbl-urun-adi-long">
                        <asp:Label ID="Label4" runat="server" Text="Ürün Adi"></asp:Label>
                    </th>
                    <th class="tbl-urun-number-short">
                        <asp:Label ID="Label5" runat="server" Text="Ürün Fiyati"></asp:Label>
                    </th>
                    <th class="tbl-urun-number-short">
                        <asp:Label ID="Label6" runat="server" Text="Ürün Stok"></asp:Label>
                    </th>
                    <th class="tbl-urun-adi-long">
                        <asp:Label ID="Label27" runat="server" Text="Ürün Acıklama"></asp:Label>
                    </th>
                    <th class="tbl-urun-adi-short">
                        <asp:Label ID="Label7" runat="server" Text="Renk Adi"></asp:Label>
                    </th>
                    <th class="tbl-urun-number-short">
                        <asp:Label ID="Label8" runat="server" Text="Beden No"></asp:Label>
                    </th>
                    <th class="tbl-urun-adi-short">
                        <asp:Label ID="Label9" runat="server" Text="Materyal adi"></asp:Label>
                    </th>
                      <th class="tbl-urun-number-long">
                        <asp:Label ID="Label24" runat="server" Text="Ürün Tarih"></asp:Label>
                    </th>
                      <th class="tbl-urun-number-long">
                        <asp:Label ID="Label25" runat="server" Text="Güncelle"></asp:Label>
                    </th>
                      <th class="tbl-urun-number-long">
                        <asp:Label ID="Label26" runat="server" Text="Sil"></asp:Label>
                    </th>
                </tr>

            </table>
            <div class="w3-center">
                <asp:DataList ID="DataList1" runat="server" Width="1265px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">

                    <ItemTemplate>
                        <table class="auto-style1">


                            <tr>
                                <td class="tbl-urun-number-short">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("UrunId") %>'></asp:Label>
                                </td>
                                 <td class="tbl-urun-number-short">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("UrunKodu") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-short">
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("KategoriAdi") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-short">
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("AltKategoriAdi") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-short">
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("MarkaAdi") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-long">
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("UrunAdi") %>'></asp:Label>
                                </td>
                           
                                <td class="tbl-urun-number-short">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("UrunFiyati") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-number-short">
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("UrunStok") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-long">
                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("UrunAcıklama") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-short">
                                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("RenkAdi") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-number-short">
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("BedenNo") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-adi-short">
                                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("MateryalAdi") %>'></asp:Label>
                                </td>
                                <td class="tbl-urun-number-long">
                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("UrunTarih") %>'></asp:Label>
                                </td>
                                <td class=" tbl-urun-number-long">
                                    <a href="urun-guncelle.aspx?UrunKodu=<%# Eval("UrunKodu")%>">

                                        <asp:Image ID="ImageGuncelle" CssClass="islem-image" src="\Yonetim\images\Güncelle.png" runat="server" Height="25px" Width="25px" OnClick="ImageGuncelle_Click" PostBackUrl="~/Yonetim/admin/urun-guncelle.aspx" />
                                    </a>

                                </td>
                                <td class=" tbl-urun-number-long">
                                    <a href="urun-sil.aspx?UrunKodu=<%# Eval("UrunKodu")%>">

                                        <asp:Image ID="ImageSil" CssClass="islem-image" src="\Yonetim\images\sil.png" runat="server" Height="25px" Width="25px" OnClick="ImageSil_Click" />
                                    </a>

                                </td>


                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>

        </asp:Panel>








    </div>



</asp:Content>
