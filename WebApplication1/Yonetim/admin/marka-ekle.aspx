<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/admin/admin-layout.Master" AutoEventWireup="true" CodeBehind="marka-ekle.aspx.cs" Inherits="WebApplication1.Yonetim.admin.marka_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .marka-container {
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

     /*   div {
            border-radius: 5px;
            background-color: #f2f2f2;
        }*/

        .auto-style2 {
            width: 52%;
            height: 112px;
        }
    </style>

    <div class="marka-container">


        <h3>Marka Ekle</h3>

        <div>
            <formview action="/action_page.php">


                <label for="fname">Marka İd</label>
                <input type="text" class="a" name="firstname" placeholder="Marka Id..">

                <label for="lname">Marka Adi</label>
                <input type="text" id="as" name="lastname" placeholder="Marka Adi..">



                <input type="submit" value="Submit">
            </formview>
        </div>
    </div>

</asp:Content>
