﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ForestProductTracker.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>HOME</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
        <link rel="stylesheet" href="css/nav.css" />
        
        <style>
           
            .heroBox{

                max-width: 50%;
                display:flex;
                max-width: 50%;
                display: flex;
                flex-direction: column;
                /* align-content: center; */
                align-items: flex-start;
                text-align: start;
                margin-top: 10%;
                margin-bottom: 10%;
            }   
            .heroBox p {
               color: rgba(18, 23, 34, 0.75);
            }
            .Hero{
                
                width: auto;
                height: 90%;
                display: flex;
                display: flex;
                flex-direction: row;
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;

            }
            .heroLogo{

            }
            .vl {
              border-left: 3px solid black;
              height: 10vh;
              margin-left: 3vw;
              margin-right: 3vw;
            }


        </style>
    </head>
    <body>

        <!-- Navbar (sit on top) -->
        <div class="w3-top ">
            <div class="w3-bar w3-white w3-padding w3-card NavTop">
                <div class="logo">
                    <a href="#home" class="w3-bar-item w3-button">
                        <img src="imgs/Logo.jpg" class="w3-image" style="height:30px;" />
                    </a>
                </div>
                
                <!-- Right-sided navbar links. Hide them on small screens -->
                <div class="w3-right w3-hide-small" style="margin-top: .5%;">
                    <a href="#about" class="w3-bar-item w3-button">About</a>
                    <a href="Login.aspx" class="w3-bar-item w3-button">Login</a>
                    <a href="Registration.aspx" class="w3-bar-item w3-button">Sign Up</a>
                </div>
            </div>
        </div>

        <!-- Hero -->
        <div class="Hero">
            <div class="heroLogo">
                 <img src="imgs/Logo.jpg" class="w3-image" />
            </div>
            <div class="vl"></div>
            <div class="heroBox">
                 <h1 style="font-weight: 800;">FOREST PRODUCT TRACKER </h1>
                 <p>Elevate your ecological footprint with our innovative forest product tracker, powered by blockchain technology.
                 Trace the journey of every tree, ensuring sustainability and transparency in your purchases</p>

            </div>
           
        </div>
         

    <!-- Header -->
    <header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
        <img class="w3-image" src="imgs/forest4.jpg" alt="Image not available :/" style="width: 100vw; " />
        
    </header>
      

    <!-- Page content -->
    <div class="w3-content" style="max-width:1100px">

        <!-- About Section -->
        <div class="w3-row w3-padding-64" id="about">
            <div class="w3-col m6 w3-padding-large w3-hide-small">
                <img src="imgs/timber.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="650" />
            </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">About Forest Product Tracker</h1><br/>
      <h5 class="w3-center">Use of blockchain technology for tracking supply of Forest based products. </h5>
      <p class="w3-large"> Looking at an open and transparent technology such as blockchain, where in the forest produce of legal origins, can be traced from the source (site of harvest) to the end use product in the market.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Blockchains which were originally developed for foolproof tracking of cryptocurrencies are now considered as a potential tool to track movement of various products across multiple channels. It is believed that using this technology, legally sourced Forest products, can be identified with certainty and trafficking of illegally procured forest based product can be checked.</p>
    </div>
  </div>
 
<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>&copy All right Reserved.</p>
</footer>

</body>
  
</html>

