<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/admin/admin-layout.Master" AutoEventWireup="true" CodeBehind="kategori-ekle.aspx.cs" Inherits="WebApplication1.Yonetim.admin.kategori_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .kategori-container {
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

        input[type=submit] {
            width: 30%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 2rem 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }

      /*  div {
            border-radius: 5px;
            background-color: #f2f2f2;
        }*/

        .auto-style2 {
            width: 52%;
            height: 112px;
        }
    </style>

    <div class="kategori-container">


        <h3>Ürün Ekle</h3>

        <div>
            <formview action="/action_page.php">


                <label for="fname">kategori İd</label>
                <input type="text" class="a" name="firstname" placeholder="Kategori Id..">

                <label for="lname">Kategori Adi</label>
                <input type="text" id="as" name="lastname" placeholder="Ürün Id..">



                <input type="submit" value="Submit">
            </formview>
        </div>
    </div>

</asp:Content>
