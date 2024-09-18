<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridview.aspx.cs" Inherits="WebApplication2.gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="regStyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="<%$ ConnectionStrings:masterConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [register]" ConnectionString="Data Source=.;Initial Catalog=master;Persist Security Info=True;User ID=sa;Password=sql12345;Encrypt=False;TrustServerCertificate=True"></asp:SqlDataSource>
            <asp:Button ID="button1" runat="server" Text="Click here for Hotel Registration" PostBackUrl="~/Hotel Registration.aspx" forecolor="White" BackColor="Blue"/>
        </div>

    </form>
</body>
</html>
