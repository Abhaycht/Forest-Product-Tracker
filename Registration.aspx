<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ForestProductTracker.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SIGN UP </title>
    <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="css/nav.css" />
        <style>
           
            
            form {border: 3px solid #f1f1f1;
                  border-radius:15px;
                  font-family: 'Poppins', sans-serif!important;
                  background-color: white;
            }

            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
                
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
</head>
<body>
        <!-- Navbar (sit on top) -->
<div class="w3-top ">
    <div class="w3-bar w3-white w3-padding w3-card NavTop">
        <div class="logo">
            <a href="Home.aspx" class="w3-bar-item w3-button">
                <img src="imgs/Logo.jpg" class="w3-image" style="height:30px;" />
            </a>
        </div>       
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small" style="margin-top: .5%;">
            <a href="Login.aspx" class="w3-bar-item w3-button">Sign In</a>
        </div>
    </div>
</div>
   <!-- Registration Section -->
   <div class="w3-row w3-padding-64" id="login" style="
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-image: url(imgs/signupBG.jpg);
  background-repeat: no-repeat;
  background-size:cover;
  min-height: 100vh;">
        <div class="w3-col l6 w3-padding-large">
            <h1 class="w3-center" style="font-family: 'Poppins', sans-serif; color:white">Welcome, Sign Up!</h1><br />
            <form id="form1" runat="server">
                

                <div class="container" style="font-style: normal; font-weight: 400">
                    <br />
                    Username
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="False" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server" style="border-radius: 15px;"></asp:TextBox>
&nbsp;Password
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" style="border-radius: 15px;" ></asp:TextBox>
&nbsp;<label for="cpsw">Confirm Password <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="must be same as Password" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" style="border-radius: 15px;"></asp:TextBox>
                   </label>
&nbsp;<label>
                        </label>

                    <label for="cpsw">Category
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="427px">
                        <asp:ListItem Value="Trader">Trader</asp:ListItem>
                        <asp:ListItem Value="ForestAuth">Forest Authority</asp:ListItem>
                    </asp:RadioButtonList>
                    </label>
                </div>

                <div class="container" style="text-align:center; background-color:#f1f1f1"  border-bottom-left-radius:15px; border-bottom-right-radius:15px;>
                    <span class="signIn" style="text-align:center">Already have an Account ? <a href="Login.aspx">Sign In</a></span>
                     &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#49BF4C" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="46px" OnClick="Button1_Click" Text="Submit" Width="574px" style="border-color:#3399ff00; margin-top:2vh; border-radius:15px;" />
                </div>
            </form>
        </div> 
   </div>
</body>
</html>
