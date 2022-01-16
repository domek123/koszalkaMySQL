<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="data_bazyn.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            line-height: 30px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Logowanie"></asp:Label>
        </div>
        <div aria-multiline="True" class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Login" Width="80px"></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password" Width="80px"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="auto-style1">
            <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" Text="Sign in" />
        </div>
        <div class="auto-style2">
            <asp:Label ID="lInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
