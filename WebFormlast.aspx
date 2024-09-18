<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormlast.aspx.cs" Inherits="WebApplication2.WebFormlast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="<%$ ConnectionStrings:masterConnectionString7.ProviderName %>" SelectCommand="SELECT * FROM [hotel]" ConnectionString="Data Source=.;Initial Catalog=master;Persist Security Info=True;User ID=sa;Password=sql12345;Encrypt=False;TrustServerCertificate=True"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
