<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhishApp.aspx.cs" Inherits="PhishMyV1.PhishApp" EnableEventValidation = "false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PhishApp</title>
    <style type="text/css">
        #form1 {
            height: 185px;
        }
        h1 {
                font-size:100px; 
                color:#FEFFFF; 
                font-family:sans-serif;  
                padding: 30px; 
                background-color: #2B7A78;
                text-align: center;
                font-weight:bold;
                
        }
        Label1 {
                font-size:100px; 
                color:#FEFFFF; 
                font-family:sans-serif;  
                padding: 30px; 
                background-color: #2B7A78;
                text-align: center;
                font-weight:bold;
                 
        }
        h2     {
                width:auto;
                color:#FEFFFF;
                font-family:Georgia;

        }
        nav     {
                background-color: #2B7B90;
                color: #FEFFFF;
                width:fit-content;
                text-align:center;
                padding:15px;
                font-size:20px;
        }
    </style>
</head>
<body style="background-color:#3AAFA9">
    <header>
        <center>
           <h1> PhishMy.com  </h1>
           <!--
           --><h1 style="color:darkslategrey">Application</h1>
       </center>
    </header>
    <center><nav>
        <a href="https://localhost:44345/Home.aspx">Home</a> |
        <a href="https://localhost:44345/Targeted.aspx">Watch Results</a>
    </nav></center>

    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhishDBConnectionString %>" SelectCommand="SELECT * FROM [tblPhishTyp]"></asp:SqlDataSource>
        </div>
        <center>
            <h2 style="background-color:#101820FF">Send email to (put in first place your email to send you the results)</h2>
            <h2 style="background-color:crimson"> Separate emails with a ','</h2>
            <h2 style="background-color:#101820FF">Example: abde@ymail.com,fghi@ymail.com,jklmn@ymail.com</h2>
        <p></p>
        <asp:TextBox ID="txtRecp" runat="server" Height="48px" Width="326px"></asp:TextBox>
        <br />
        <p></p>
        <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
        <br />
        <p></p>
        <asp:DropDownList ID="txtSubj" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>IMPORTANT: Changes made in your account</asp:ListItem>
                <asp:ListItem>Personal Information Updated</asp:ListItem>
                <asp:ListItem>Notification Irregular Activity</asp:ListItem>
        </asp:DropDownList>
        <br />
        <p></p>
        <asp:Label ID="Label2" runat="server" Text="Select pre-defined phishing email"></asp:Label><br />
        <p></p>
        <asp:DropDownList ID="txtTyp" runat="server" DataSourceID="SqlDataSource1" DataTextField="Message type" DataValueField="Text Message" Height="22px" Width="143px">
        </asp:DropDownList>
        <br />
        </center>
        <br />
        <center><p>
        <asp:Button ID="Button1" runat="server" OnClick="btnSend_Email" Text="Send Phishing Email" />
        </p></center>
        
    </form>
    <p></p>
</body>
</html>
