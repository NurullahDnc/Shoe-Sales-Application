<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Layout.Master" AutoEventWireup="true" CodeBehind="kullanıcı-üyeol.aspx.cs" Inherits="WebApplication1.Yonetim.kullanıcı_üyeol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="kullanıcı-üyeol.css" rel="stylesheet" />
    <!---->

    <div class="container">
        <div class="form-container">

            <div class="form-title">
                <h1>Hosgeldiniz!</h1>
            </div>

            <formview class="login">
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
                <div class="form-group">


                    <asp:TextBox class="input-group" placeholder="Adınız" ID="TbUyeAdi" runat="server"></asp:TextBox>


                </div>
                <div class="form-group">
                    <asp:TextBox class="input-group" placeholder="Soyadınz" ID="TbUyeSoyadi" runat="server"></asp:TextBox>


                </div>
                <div class="form-group">
                    <asp:TextBox class="input-group" placeholder="Telefon Numaranız" ID="TbUyeTelefonNo" runat="server"></asp:TextBox>


                </div>

                <div class="form-group form-cinsiyet-control">

                    <div class="form-radio">
                        <input type="radio" name="cinsiyet" class=" " />
                        <label class="">Erkek</label>
                    </div>

                    <div class="form-radio">
                        <input type="radio" name="cinsiyet" class="" />
                        <label class="">Kadın</label>
                    </div>
                </div>


                <div class="form-group">
                    <asp:TextBox class="input-group" placeholder="E-Mail Adresiniz" ID="TbUyeEposta" runat="server"></asp:TextBox>

                </div>

                <div class="form-group">
                    <asp:TextBox class="input-group" placeholder="Sifreniz" ID="TbUyeSifre" runat="server"></asp:TextBox>


                </div>

                <div class="form-group form-hatırla-control">
                    <input type="checkbox" class="" />
                    <label class="">Beni Hatırla</label>
                </div>

                <div class="form-group">
                    <a href="#">

                        <asp:Button class="form-btn" ID="BtnUyeOl" runat="server" Text="Üye Ol" OnClick="BtnUyeOl_Click" />
                    </a>
                </div>

                <div class="form-group ">
                    <a href="kullanıcı-giriş.aspx">
                        <label class="form-label">Hesapım Var</label>
                    </a>
                </div>

            </formview>


        </div>

    </div>


</asp:Content>
