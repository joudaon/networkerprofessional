<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageGmailGuide.aspx.cs" Inherits="Networker.AdminPageGmailGuide" MasterPageFile="~/MasterPage.Master" %>

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
                            <h1>Configuración Email</h1>
                            <p>Configura tu cuenta de correo electrónico en el móvil</p>
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
                <img src="images/logos/networker-logo.png" style="border:none" alt="Networker Professional" />
                </a>
            </div>
            <br />
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Guía de configuración</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <div class="default-container minwidth75">
                                <div id="emailconfigure">
                                    <ol class="rounded-list">
                                        <li><a>Abrir aplicación Gmail</a></li>
                                        <li><a>Ir a: Menú > Ajustes > Añadir cuenta</a></li>
                                        <li>
                                            <a>Seleccionar: Personal (IMAP/POP) y pulsar siguiente.
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/01.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Introducir su cuenta de correo example@networkerprofessional.net y seleccionar: Configuración manual
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/02.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Seleccionar: Personal (IMAP) y pulsar siguiente.
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/03.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Introducir la contraseña proporcionada
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/04.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Ajustar el servidor de entrada de la siguiente manera:
                                            <div>
                                                <br />
                                                <b>Servidor:</b>
                                                <br />
                                                mail.networkerprofessional.net
                                                <br />
                                                <br />
                                                <b>Puerto:</b>
                                                <br />
                                                993
                                                <br />
                                                <br />
                                                <b>Tipo de seguridad:</b>
                                                <br />
                                                SSL / TLS (aceptar todos...)
                                                <br />
                                                <br />
                                            </div>
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/05.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Ajustar el servidor de salida de la siguiente manera:
                                            <div>
                                                <br />
                                                <b>Servidor:</b>
                                                <br />
                                                mail.networkerprofessional.net
                                                <br />
                                                <br />
                                                <b>Puerto:</b>
                                                <br />
                                                465
                                                <br />
                                                <br />
                                                <b>Tipo de seguridad:</b>
                                                <br />
                                                SSL / TLS (aceptar todos...)
                                                <br />
                                                <br />
                                            </div>
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/06.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Establecer la frecuencia de sincronización.
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/07.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Indicar su nombre.
                                                <div>
                                                    <div class="centerclass"><img src="images/gmailconfig/08.jpg" class="img-responsive" alt="Personal"/></div>
                                                </div>
                                                <p></p>
                                                ¡Su cuenta ya está completamente configurada!
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
