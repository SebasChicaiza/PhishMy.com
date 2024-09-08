﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PhishMyV1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PhishMy</title>
    <meta name="viewport" content="width=device-width, initial-scale=0.75"/>
    <link rel="icon" type="image/x-icon" href="\Resources\logo.ico"/>
    <style type="text/css">
            h1 {font-size:100px; 
                color:#FEFFFF; 
                font-family:sans-serif;  
                padding: 50px; 
                background-color: #2B7A78;
                text-align: center;
                font-weight:bold;
            }
            h2 {
                font-family:sans-serif;
                float:left; 
                width:50%; 
                background-color: #2B7A78; 
                text-align:center;
                color: white;
                height: auto;
            }
            h3 {
                font-family:sans-serif;
           
                width:50%; 
                background-color: crimson; 
                text-align:center;
                color: white;
                height: auto;
            }
            h4 {
                font-family:sans-serif;
                float:left; 
                width:50%; 
                height: auto;
                background-color: #00203FFF; 
                text-align:center;
                color: white;
                font-size:30px;
                
            }
             
            .button-1 {
              appearance: none;
              background-color: #000000;
              border: 2px solid #1A1A1A;
              border-radius: 15px;
              box-sizing: border-box;
              color: #FFFFFF;
              cursor: pointer;
              display: inline-block;
              font-family: Roobert,-apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
              font-size: 16px;
              font-weight: 600;
              line-height: normal;
              margin: 0;
              min-height: 60px;
              min-width: 0;
              outline: none;
              padding: 16px 24px;
              text-align: center;
              text-decoration: none;
              transition: all 300ms cubic-bezier(.23, 1, 0.32, 1);
              user-select: none;
              -webkit-user-select: none;
              touch-action: manipulation;
              width:60%;
              will-change: transform;
            }

            .button-1:disabled {
              pointer-events: none;
            }

            .button-1:hover {
              box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
              transform: translateY(-2px);
            }

            .button-1:active {
              box-shadow: none;
              transform: translateY(0);
            }
           
            
    </style>
</head>

<body style="background-color:#3AAFA9">
     
    <form id="form1" runat="server">
     
    <center><header>
            <h1>PhishMy.com<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PhishDBConnectionString %>" SelectCommand="SELECT * FROM [PhishCh]"></asp:SqlDataSource>
            </h1>
    </header></center>
    <br/>
    <section>
            <article style = "background-color: #FEFFFF">
                <h2>Are you looking for a way to prevent your company from phishing-related problems?</h2>
                <h2 style="background-color:crimson; font-size: 40px; height: auto">So let me tell you that you are in the RIGHT place!</h2>
            </article>
    </section>
    <section></section>
    <hr />

    <section>
            <center><h1 style="width:90%; background-color:#101820FF; font-size:30px">If you are an employer looking for options <br /> on how to spot your most vulnerable employees, <br /> PhisMy.com may be the right fit for you</h1><br />
            </center>
            <center><h4>1. We will send fake phishing emails to your employees</h4></center>
            <h4>2. We will spot those that clicked on the email</h4>
            <h4 style="width:100%">3. We will send you the results right away!</h4>
        <br />
        <hr />
    </section>
    <section>        
              <h2 style="width:100%">Confidentiality</h2>
              <center><h1 style="font-size:100px">⬇</h1></center>
              <h2 style="width:100%; background-color:crimson">Effectiveness</h2>
              <center><h1 style="font-size:100px; background-color:crimson"">⬇</h1></center>
              <h2 style="width:100%">Easy to use</h2>
              <center><h1 style="font-size:100px">⬇</h1></center>
         
    <br />
    </section>
         
    
          <center>
              <input class="button-1" type="button" onclick="location.href='https://localhost:44345/PhishApp.aspx';" value="Let's Get Started!" />
          </center>

    

    <br />
   
    
    </form>
   
    
</body>
</html>
