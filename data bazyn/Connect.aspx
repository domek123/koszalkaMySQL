<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="data_bazyn.ConnectData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbServer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Database"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbDatabase" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Tabela"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbTable" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="User"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lInfo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="bConnect" runat="server" OnClick="bConnect_Click" Text="Connect"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
