<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="WebApplication2.page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="regStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h2 align="center">Login</h2>
        <div>
            <table colspan="2" align="center">
                <tr>
                    <td>Username:</td>
                    <td><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><asp:Textbox id="textbox2" runat="server" TextMode="Password"></asp:Textbox></td>
                </tr>
                <tr>
                    <td><asp:button ID="button1" runat="server" Text="Login"  OnClick="button1_Click" BackColor="Blue" ForeColor="White"></asp:button></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
