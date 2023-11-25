<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErkutResimÇekme.aspx.cs" Inherits="WebApplication1.ErkutResimÇekme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!--ÜürnDETATY erkut-->
</head>
<body>
    <%--<form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ResimId" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    ResimId:
                    <asp:Label ID="ResimIdLabel" runat="server" Text='<%# Eval("ResimId") %>' />
                    <br />
                    UrunId:
                    <asp:Label ID="UrunIdLabel" runat="server" Text='<%# Eval("UrunId") %>' />
                    <br />
                    Resim1:
                    <asp:Label ID="Resim1Label" runat="server" Text='<%# Eval("Resim1") %>' />
                    <br />
                    Resim2:
                    <asp:Label ID="Resim2Label" runat="server" Text='<%# Eval("Resim2") %>' />
                    <br />
                    Resim3:
                    <asp:Label ID="Resim3Label" runat="server" Text='<%# Eval("Resim3") %>' />
                    <br />
                    Resim4:
                    <asp:Label ID="Resim4Label" runat="server" Text='<%# Eval("Resim4") %>' />
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Resim1", "~/resim/{0}") %>' />
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Resim2", "~/resim/{0}") %>' />
                    <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Resim3", "~/resim/{0}") %>' />
                    <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("Resim4", "~/resim/{0}") %>' />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-Ticaret-IConnectionString %>" SelectCommand="SELECT * FROM [UrunResim] WHERE ([ResimId] = @ResimId)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="ResimId" QueryStringField="resim" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>--%>
</body>
</html>
