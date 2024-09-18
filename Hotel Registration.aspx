 <%@ Page Language="C#"AutoEventWireup="true" CodeBehind="Hotel Registration.aspx.cs" Inherits="WebApplication2.Hotel_Registration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="get">
        <div>
            <table>
                <tr>
                    <td>Usename:</td>
                    <td><asp:TextBox ID="text1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Room Type:</td>
                    <td>
                        <asp:RadioButton ID="radio1" GroupName="roomtype" runat="server" Text="Delux" />
                         <asp:RadioButton ID="radio2" GroupName="roomtype" runat="server" Text="Ordinary" />
                    </td>
                </tr>
                <tr>
                    <td>Amenities</td>
                    <td>
                        <asp:CheckBox ID="check1" runat="server" Text="AC" />
                        <asp:CheckBox ID="check2" runat="server" Text="Computer" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="button1" runat="server" Text="Register"  OnClick="button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
