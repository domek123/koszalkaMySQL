<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="data_bazyn.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            line-height:30px
        }
        #tbLogin,#tbPassword,#tbCheck,#tbEmail{
            width: 50%;
            background-color: greenyellow;
        }
        #tbLogin:focus,#tbPassword:focus,#tbCheck:focus,#tbEmail:focus{
            background-color: green;
        }
        .datas{
            width:400px;
            margin:0 auto;
            border:1px dashed black;
            padding:5px;
        }

        #Login,#Label2,#Label3,#Label4{
            margin-right:5px
        }
        .btn{
            width:200px;
            margin:5px auto;
            padding:0 5px;
        }
        #btnSignUp, #btnLog{
            margin:0 5px;
        }
        #lInfo{
            color:red;
            text-decoration:underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-multiline="False" class="auto-style1 header">
            <asp:Label ID="Rejestracja" runat="server" Text="Rejestracja"></asp:Label>
        </div>
        <div aria-multiline="True" class="auto-style1 datas">
            <asp:Label ID="Login" runat="server" Text="Login" Width="80px"></asp:Label>
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Hasło" Width="80px"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Potwierdź" Width="80px"></asp:Label>
            <asp:TextBox ID="tbCheck" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email" Width="80px"></asp:Label>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        </div>
        <div class="auto-style1 btn">
            <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign up" />
            <asp:Button ID="btnLog" runat="server" OnClick="btnLog_Click" Text="Sign in" />
            <br />
        </div>
        <div class="auto-style1">
            <asp:Label ID="lInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
