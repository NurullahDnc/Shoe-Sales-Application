<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Layout.Master" AutoEventWireup="true" CodeBehind="kullanıcı-giriş.aspx.cs" Inherits="WebApplication1.Yonetim.kullanıcı_giriş" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="kullanıcı-giriş.css" rel="stylesheet" />

    <div class="container">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="form-container">

            <div class="form-title">
                <h1>Hosgeldiniz!</h1>
            </div>
            <formview class="login">

                <div class="form-group">

                    <asp:TextBox class="input-group" placeholder="E-Mail Adresiniz" ID="TbEposta" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox class="input-group" placeholder="Sifreniz"  id="TbSifre"  runat="server"></asp:TextBox>


                   
                </div>

                <div class="form-group checkbox-control">
                    <input type="checkbox" class="" />
                    <label class="">Beni Hatırla</label>
                </div>

                <div class="form-group">
                    <a href="#">

                        <asp:Button ID="BtnGiris" class="form-btn" runat="server" Text="Giriş" OnClick="BtnGiris_Click" />

                    </a>
                </div>

                <div class="form-group">
                    <a href="#">
                        <label class="form-label">Parolanızı mı Unuttunuz?</label>

                    </a>
                    <a href="kullanıcı-üyeol.aspx">

                        <label class="form-label">Hesap Oluştur!</label>
                    </a>
                </div>
                <asp:Label ID="LblMesaj" runat="server" Text=""></asp:Label>
            </formview>

        </div>

    </div>





    <!--   <div class="giriş-conainer">
         
            <table class="form-giris">
                <tr>
                    <td>E Mail</td>
                    <td>
                        <input class="email-giriş" type="text" placeholder="E-mail adresiniz">
                    </td>
                </tr>
                <tr>
                    <td>Sifre</td>
                    <td>
                        <input class="sifre-giriş" type="password" placeholder="sifreniz">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="hatırla" for="check3">Beni hatırla</label>
                    </td>
                    <td>
                        <label class="unuttum">Sifremi Unuttum</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="btn-giriş" type="button" value="GİRİŞ" /></td>
                </tr>




            </table>

        </div> -->

</asp:Content>
