<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/admin/admin-layout.Master" AutoEventWireup="true" CodeBehind="Admin-Siparis.aspx.cs" Inherits="WebApplication1.Yonetim.admin.Admin_Siparis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .containers {
            width: 85%;
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
    </style>


    <div class="w3-container containers">

        <div class="header-container">
            <div class="btn-ekle">
                <a href="Siparis-Detay.aspx">
                    <input class="w3-btn w3-ripple w3-green w3-round-xlarge" type="button" value="Sipariş Detay" />

                </a>
            </div>
            <div class="box">
                <input type="text" class="search" placeholder="Ara..">
                <a href="#">
                    <i class="fa fa-search " aria-hidden="true"></i>
                </a>

            </div>
        </div>


        <table class="w3-table w3-striped w3-border">
            <tr>
                <th>Siparis İd</th>
                <th>Siparis Adi</th>
                <th>Guncelle</th>
                <th>Sil</th>

            </tr>
            <tr>
                <td>Jill</td>
                <td>Smith</td>
                <td>Jill</td>
                <td>Smith</td>

            </tr>
            <tr>
                <td>Eve</td>
                <td>jack</td>
                <td>Jill</td>
                <td>Smith</td>

            </tr>
            <tr>
                <td>Ada</td>
                <td>Johnson</td>
                <td>Jill</td>
                <td>Smith</td>

            </tr>
        </table>
</asp:Content>
