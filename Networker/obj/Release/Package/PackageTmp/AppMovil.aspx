<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppMovil.aspx.cs" Inherits="Networker.AppMovil" MasterPageFile="~/MasterPage.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="styles/numberlist.css" type="text/css" />
    <script src="scripts/bootstrap.min.js" async="" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="HeadContent" ContentPlaceHolderID="bodyholder" runat="Server">
    <style>
        /*Change the Toogle Main Menu*/
        .nav-primary dl dt {
            padding-top: 8px;
        }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>Aplicación Móvil</h1>
                            <p>Descarga nuestra aplicación en tu móvil</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="centerclass">
                <a id="defaultpage" runat="server" href="#">
                <img src="images/logos/networker-logo.png" alt="Networker Professional" style="border:none"/>
                </a>
            </div>
            <br />
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Código QR</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <div class="default-container minwidth75">
                                <div id="containerNetWorker">
                                    <div class="centerclass"><p>Es necesario tener una aplicación de lectura de códigos QR para poder instalar nuestra aplicación.</p></div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-4">
                                            <div class="centerclass"><h2>Android</h2></div>
                                            <div class="panel panel-primary">
                                                <div class="panel-body">
                                                    <div class="grid">
                                                        <div class="centerclass"><img src="images/images/CodigoQR.png" style="border:none"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Instalación en Android</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <div class="default-container minwidth75">
                                <div id="containerapkinstall">
                                    <p>Hay que habilitar los "Origenes desconocidos" para instalar la APK.</p>
                                    <ol class="rounded-list">
                                        <li><a>Ir a: Ajustes > Seguridad</a></li>
                                        <li>
                                            <a>Permitir la instalación de de aplicaciones de origen desconocido
                                                <div>
                                                    <div class="centerclass"><img src="images/apk/01_origenesdesconocidos.png" class="img-responsive" alt="Origen desconocido"/></div>
                                                </div>
                                            </a>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
