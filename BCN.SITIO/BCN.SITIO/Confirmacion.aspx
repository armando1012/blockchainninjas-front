﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="BCN.SITIO.Confirmacion" %>

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
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Registrar </a></li>
                    <li><a href="#">Consultar</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div>
        </div>
    </nav>





    <header class="header__bg">
        <img src="Content/Img/cov1.jpg" alt="Cover" />
        </div>
   
    </header>

    <form runat="server" id="form1">
        <div class="estatequieto">
            <section style="width: 80%; margin: 140px auto;">
                <h1 class="text-center" style="margin-top: -120px;"><strong>¡Listo!</strong></h1>
                <h3 class="text-center">Ahora podrás ser reconocido mundialmente.</h3>

                <br>
                <br>
                <br>
                <br>

                <div class="text-center">
                    <a href="login.html">                        
                        <asp:Button runat="server" ID="BtnDescargar" Text="Obtener representación impresa" OnClick="BtnDescargar_Click" />
                    </a>
                </div>

            </section>
        </div>
    </form>





    <!-- Footer -->
    <footer id="footer">
        <div class="container">
            <a class="js-scroll-trigger" href="#page-top">
                <div class="container">
                    <div class="centrar max-content">
            </a>
            <br>

            <div class="link">
                <div><a href="#">Aviso legal</a></div>
                <br>
                <div><a href="#">Mapa del sitio</a></div>
                <br>
                <div><a href="#">Aviso de privacidad</a></div>


            </div>
            <br />
            <br />
    </footer>

    <!-- Scripts -->
    <script src="Content/Js/skel.min.js"></script>
    <script src="Content/Js/util.js"></script>
    <!--[if lte IE 8]><script src="Content/Js/ie/respond.min.js"></script><![endif]-->
    <!--<script src="Content/Js/main.js"></script>-->


</body>

</html>
