<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formacion.aspx.cs" Inherits="Networker.Formacion" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
    <script src="scripts/bootstrap.min.js" async="" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="HeadContent" ContentPlaceHolderID="bodyholder" runat="Server">
    <style>
        /*Change the Toogle Main Menu*/
        .nav-primary dl dt {
            padding-top: 4px;
        }

        /*Change the Toogle Secondary Menu*/
        .nav-primary .nav-consumer ul li a {
            padding-top: 6px;
        }

        video {
            width: 90%;
            height: auto;
            border: solid;
            border-width: 6px;
            border-color: #b2b2b2;
            cursor: pointer;
        }

        .google-maps {
            position: relative;
            padding-bottom: 75%;
            overflow: hidden;
        }

            .google-maps iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 95% !important;
                height: 95% !important;
            }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>Universidades NetWorker</h1>
                            <p>Infórmate de nuestras formaciones.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="centerclass">
        <a id="defaultpage" runat="server" href="#">
        <img src="images/logos/networker-logo.png" alt="Networker Professional" />
        </a>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Próximas Universidades</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <div class="default-container minwidth75">
                                <br />
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-2">
                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                                <p>Universidad Start Go Valencia </p>
                                                <p><u>Día</u>: Sábado 21 de Mayo de 2016</p>
                                                <p><u>Horario</u>: De 10:00 a 20:00</p>
                                                <p><u>Lugar</u>: <a href="https://goo.gl/maps/bEL2zjQGQGD2">Territorio Mandalay</a></p>
                                                <div class="centerclass">
                                            <div class="google-maps">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3079.6391126091253!2d-0.3870450854701362!3d39.47748092014856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd604f5a8ff4b3f1%3A0x906838a5ace20f9e!2sCarrer+d&#39;Andreu+Juli%C3%A0%2C+7%2C+46008+Val%C3%A8ncia%2C+Valencia%2C+Spain!5e0!3m2!1sen!2sus!4v1463572634296"
                                                    width="600" height="450" style="border: solid; border-width: 6px; border-color: #b2b2b2;"></iframe>
                                            </div>
                                        </div>
                                                <br />
                                                <p><u>Pagina Web</u>: <a href="https://www.territoriomandalay.com">https://www.territoriomandalay.com</a></p>
                                                <p>Calle Andrés Julia, 7, 46008 Valencia</p>
                                                <p><a href="tel:963834632">Tel: 963 83 46 32</a></p>
                                                <p>Confirme la asistencia a su Director.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-sm-offset-2">
                                        <div class="panel panel-primary">
                                            <div class="panel-body">
                                                <p>Universidad Start Go Valencia </p>
                                                <p><u>Día</u>: Sábado 7 de Mayo de 2016</p>
                                                <p><u>Horario</u>: De 10:00 a 20:00</p>
                                                <p><u>Lugar</u>: <a href="https://g.co/kgs/P38nx">Hotel Silken Puerta Valencia</a></p>
                                                <div class="centerclass">
                                            <div class="google-maps">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3080.037781051832!2d-0.3578154852176584!3d39.46847517948664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd6048958f674f91%3A0x95fd6f164b313381!2sAvinguda+del+Cardenal+Benlloch%2C+28%2C+46021+Val%C3%A8ncia%2C+Valencia%2C+Spain!5e0!3m2!1sen!2sdk!4v1463572806647"
                                                    width="600" height="450" style="border: solid; border-width: 6px; border-color: #b2b2b2;"></iframe>
                                            </div>
                                        </div>
                                                <br />
                                                <p>Avenida del Cardenal Benlloch, 28, 46021 Valencia</p>
                                                <p><a href="tel:963936395">Tel: 963 93 63 95</a></p>
                                                <p>Confirme la asistencia a su Director.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Donde estamos </h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        <div class="centerclass"><img src="images/university/formacion-mapa.gif" width="700" height="550" /></div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor ">Porque tienes que ir a la proxima universidad</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <div class="default-container minwidth75">
                                <div id="containerNetWorker">
                                    <div class="centerclass">
                                        <video controls poster="images/gallery/videos/thumb-big-university.jpg" style="margin-left:10px">
                                            <source src="http://networkerprofessional.net/videos/networker/TestimoniosUniversidad.mp4" />
                                        </video>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
