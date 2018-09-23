<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCN.SITIO.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section style="width: 80%; margin: 40px auto;">
        <form id="form1" runat="server">
            <asp:HiddenField runat="server" ID="HiddenField1" />

            <asp:Panel runat="server" ID="PnlError" CssClass="text-center" Visible="false">
                <asp:Label runat="server" ID="LblError" ForeColor="Red" Font-Bold="true" Font-Size="Large" Text="Lo sentimos, no pudimos procesar su información"></asp:Label>
            </asp:Panel>

            <asp:Panel runat="server" ID="PnlContenido" Width="100%">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-lg-4">
                        <div class="form-group">
                            <label for="TxtTipo">Tipo</label>
                            <input runat="server" type="text" class="form-control" id="TxtTipo" aria-describedby="nameHelp" disabled="disabled" value="P" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-4">
                        <div class="form-group">
                            <label for="TxtPEmisor">País emisor</label>
                            <input runat="server" type="text" class="form-control" id="TxtPEmisor" aria-describedby="nameHelp" disabled="disabled" value="VEN" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-4">
                        <div class="form-group">
                            <label for="TxtNoPasaporte">Número de pasaporte </label>                            
                            <asp:TextBox runat="server" ID="TxtNoPasaporte" CssClass="form-control text-uppercase" placeholder="Ingresa número de pasaporte" MaxLength="9"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtApellidos">Apellidos </label>
                            <input runat="server" type="text" class="form-control text-uppercase" id="TxtApellidos" aria-describedby="emailHelp" placeholder="Ingresa apellidos" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtNombres">Nombres</label>
                            <input runat="server" type="text" class="form-control text-uppercase" id="TxtNombres" placeholder="Ingresa nombres" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtNacionalidad">Nacionalidad</label>
                            <input runat="server" type="text" class="form-control text-uppercase" id="TxtNacionalidad" placeholder="Ingresa nacionalidad" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="fecNacimiento">Fecha de nacimiento</label>
                            <input runat="server" type="date" class="form-control" id="fecNacimiento" placeholder="Ingresa fecha de nacimiento" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="fecEmision">Fecha de emisión</label>
                            <input runat="server" type="date" class="form-control" id="fecEmision" placeholder="Ingresa Fecha de emisión" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="fecVencimiento">Fecha de vencimiento</label>
                            <input runat="server" type="date" class="form-control" id="fecVencimiento" placeholder="Ingresa Fecha de vencimiento" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtCedula">Cédula de identidad</label>
                            <input runat="server" type="text" class="form-control text-uppercase" id="TxtCedula" placeholder="Ingresa Cédula de identidad" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-check form-check-inline">
                            <label for="exampleInputPassword2">Sexo</label>
                            <br>
                            <input runat="server" type="radio" checked class="form-check-input" id="ChkMasculino" name="inlineMaterialRadiosExample" />
                            <label class="form-check-label" for="materialInline1">Masculino</label>

                            <input runat="server" type="radio" class="form-check-input" id="ChkFemenino" name="inlineMaterialRadiosExample" />
                            <label class="form-check-label" for="materialInline2">Femenino</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtLugarNac">Lugar de nacimiento</label>
                            <input runat="server" type="text" class="form-control" id="TxtLugarNac1" placeholder="Ingresa Lugar de nacimiento" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-lg-6">
                        <div class="form-group">
                            <label for="TxtAutoridad">Autoridad</label>
                            <input runat="server" type="text" class="form-control" id="TxtAutoridad" disabled="disabled" value="PASSPORT OFFICE" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-right">
                        <asp:Button runat="server" CssClass="btn btn-bbv2" ID="BtnPdf" Text="Enviar" OnClick="BtnConsultar_Click" />
                    </div>                    
                </div>
            </asp:Panel>

        </form>

    </section>

    <!-- Footer -->
    <footer id="footer">
        <div class="container">
            <a class="js-scroll-trigger" href="#page-top">
                <div class="container">
                    <div class="centrar max-content">
                        &nbsp;
                    </div>
                </div>
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

    <script src="Content/Js/web3.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="Content/Js/index.js"></script>

    <!-- Scripts -->
    <script src="Content/Js/skel.min.js"></script>
    <script src="Content/Js/util.js"></script>
    <!--[if lte IE 8]><script src="Content/Js/ie/respond.min.js"></script><![endif]-->
    <%--<script src="Content/Js/main.js"></script>--%>
</body>
</html>
