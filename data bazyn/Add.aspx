<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="data_bazyn.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 70px;
        }
        .auto-style3 {
            width: 144px;
        }
        .auto-style7 {
            width: 70px;
            height: 26px;
        }
        .auto-style8 {
            width: 144px;
            height: 26px;
        }
        .auto-style9 {
            height: 23px;
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="ISBN"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="tbISBN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Format"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbFormat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="Pages"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="tbPage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TbDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lInfo" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="27px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
