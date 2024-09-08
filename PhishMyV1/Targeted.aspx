<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Targeted.aspx.cs" Inherits="PhishMyV1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Targeted Users</title>
    <style>
        body    {
                background-color:moccasin;
        }
        nav     {
                background-color: deepskyblue;
                color: #FEFFFF;
                width:fit-content;
                text-align:center;
                padding:15px;
                font-size:40px;
        }
        div     {
                font-family:'Comic Sans MS';
                font-size:35px;
                
        }
        .center {
            text-align-last: center;
           
        }
    </style>
</head>
<body>
    <p></p>
    <center><header style="font-size:70px; font-family:'Cascadia Code'">List of Targeted Users</header></center>
    <p></p>
    <center><nav>
        <a href="https://localhost:44345/Home.aspx">Home</a> |
        <a href="https://localhost:44345/PhishApp.aspx">PhishMy.com App</a>
    </nav></center>
    <p></p>
    <center><form id="form1" runat="server">
        <div class="center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhishDBConnectionString %>" SelectCommand="SELECT * FROM [PhishCh]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="405px" Width="382px">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
        </div>
    </form></center>
</body>
</html>
