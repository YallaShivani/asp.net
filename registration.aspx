<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication2.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="regStyle.css" rel="stylesheet" />

</head>
<body>
    <h2 align="center">Registration Form</h2>
    <form id="form1" runat="server" method="get">
        
        <div>
            
            <table colspan="2" align="center">
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="textfn" runat="server" CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter firstname" Display="Dynamic" ForeColor="Red" ControlToValidate="textfn">
                        </asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
               <td>Last Name: </td>
     
               <td><asp:TextBox ID="textln" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter lastname" Display="Dynamic" ForeColor="Red" ControlToValidate="textln">
                   </asp:RequiredFieldValidator></td>

                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><asp:TextBox ID="textun" runat="server">
                        </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter UserName" Display="Dynamic" ForeColor="Red" ControlToValidate="textun">
                                      </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:RadioButton ID="radio1" runat="server" Text="Male" GroupName="gender" />
                        <asp:RadioButton ID="radio2" runat="server" Text="Female" GroupName="gender" />
                        <asp:RadioButton ID="radio3" runat="server" Text="Others" GroupName="gender" />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="passwords" TextMode="Password" runat="server">

                        </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Password" Display="Dynamic" ForeColor="Red" ControlToValidate="passwords">
                                      </asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                     <td>Email</td>
                     <td><asp:TextBox ID="email" TextMode="Email" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Email" Display="Dynamic" ForeColor="Red" ControlToValidate="email">
                         </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><asp:TextBox ID="phonenum" MaxLength="10" runat="server">
                        </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="phonenum">
                                      </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><asp:TextBox ID="address" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><asp:TextBox ID="age" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Languages Known:</td>
                    <td><asp:CheckBox ID="language1" runat="server" Text="Telugu" />
                        <asp:CheckBox ID="language2" runat="server" Text="Hindi" />
                        <asp:CheckBox ID="language3" runat="server" Text="English" />
                    </td>
                </tr>
                <tr>
                    <td>Country:</td>
                    <td><asp:DropDownList ID="mydropdown" runat="server">
                        <asp:ListItem Text="Select"></asp:ListItem>
                        <asp:ListItem Text="India"></asp:ListItem>
                        <asp:ListItem Text="United States"></asp:ListItem>
                        <asp:ListItem Text="China"></asp:ListItem>
                        <asp:ListItem Text="Japan"></asp:ListItem>
                        <asp:ListItem Text="Turkey"></asp:ListItem>
                        <asp:ListItem Text="New Zealand"></asp:ListItem>
                        <asp:ListItem Text="Pakistan"></asp:ListItem>
                        <asp:ListItem Text="Greenland"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="button1" runat="server" Text="Register"  OnClick="button1_Click" ForeColor="Blue" />

                    </td>
                </tr>
                <asp:Label ID="label1" runat="server"></asp:Label>

            </table>
        </div>
    </form>
</body>
</html>
