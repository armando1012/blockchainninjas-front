﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Biometrico.aspx.cs" Inherits="BCN.SITIO.Biometrico" %>

<!DOCTYPE HTML>
<html>

<head>
    <title>UNICEF</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="Content/Js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="Content/Css/main.css" />
    <!--[if lte IE 9]><link rel="stylesheet" href="Content/Css/ie9.css" /><![endif]-->
    <link rel="stylesheet" href="Content/Css/untitled.css" />
    <link rel="stylesheet" href="Content/Css/Banner.css" />
    <link rel="stylesheet" href="Content/Css/bootstrap.css">

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

    <form runat="server" id="Form1">


        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">

            <a class="navbar-brand js-scroll-trigger" href="index.html">
                <img style="max-height: 50px; max-width: 200px;" class="logo-navbar" class="img-responsive" src="Content/Img/logo.png">
            </a>
            <div class="container">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Registrar</a></li>
                        <li><a href="#">Consultar</a></li>
                        <li><a href="#">About</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <section style="width: 100%; margin: 60px auto; text-align: center;">
            <h1>¡Bienvenido!</h1>
            <br>
            <br>

            <h3>Para firmar tu Pasaporte Digital escanea tu huella dactilar.</h3>
            <br>
            <br>
            <iframe width="250" height="500" scrolling="no" src="https://lottiefiles.com/iframe/2731-fingerprint-scanner" frameborder="0" allowfullscreen></iframe>
            <br>
            <br>


            <div class="col-lg-12 text-center">
                    <asp:Button runat="server" CssClass="btn btn-bbv2" ID="BtnPdf" Text="Listo" OnClick="BtnPdf_Click" />
                </div>
        </section>


        <!-- Footer -->
        <footer id="footer">
            <div class="container ">
                <a class="js-scroll-trigger " href="#page-top ">
                    <div class="container ">
                        <div class="centrar max-content ">
                            <p class="white-text " style="font-size: 11px;"></p>
                        </div>
                    </div>
                </a>
                <br>

                <div class="link ">
                    <div><a href="# ">Aviso legal</a></div>
                    <br>
                    <div><a href="# ">Mapa del sitio</a></div>
                    <br>
                    <div><a href="# ">Aviso de privacidad</a></div>


                </div>
                <br />
                <br />
        </footer>

    </form>

    <!-- Scripts -->
    <script src="Content/Js/web3.min.js"></script>
    <script src="Content/Js/skel.min.js "></script>
    <script src="Content/Js/util.js "></script>
    <!--[if lte IE 8]><script src="Content/Js/ie/respond.min.js "></script><![endif]-->
    <script src="Content/Js/index.js "></script>

</body>

</html>
