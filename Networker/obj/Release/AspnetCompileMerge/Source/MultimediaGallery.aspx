<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultimediaGallery.aspx.cs" Inherits="Networker.MultimediaGallery" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
    <script src="scripts/bootstrap.min.js" async="" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="bodyholder" runat="Server">
    <style>
        body {
            min-width: 320px;
            font-size: 16px;
            margin: 0;
            padding: 0;
            font-family: Frutiger55,sans-serif;
            width: 100%;
            background-color: rgba(9, 12, 3, 0.1);
        }

        video {
            width: 90%;
            height: auto;
            border: solid;
            border-width: 6px;
            border-color: #ffffff;
            cursor: pointer;
        }

        /*Change the Toogle Main Menu*/
        .nav-primary dl dt {
            padding-top: 4px;
        }

        /*Change the Toogle Secondary Menu*/
        .nav-primary .nav-consumer ul li a {
            padding-top: 6px;
        }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>Galeria Multimedia</h1>
                            <p>Una imagen vale más que mil palabras.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <center>
        <a id="defaultpage" runat="server" href="#">
        <img src="images/logos/networker-logo.png" alt="Networker Professional" />
        </a>
    </center>
    <br />
    <br />
    <div class="col-sm-8 col-sm-offset-2">
        <div class="grid">
            <div class="default-container minwidth75">
                <div id="containerNetWorker">
                    <div id="mainPage">
                        <div class="accordion" id="acc1">
                            <div class="new">
                                <h2 class="topList h"><a class="trigger">NetWorker Professional</a></h2>
                                <div class="outer" style="display: none;">
                                    <div class="inner">
                                        <div class="accdiv" style="background-color: #DBDBDB; margin-top: -10px; margin-bottom: -35px;">
                                            <ul class="formItems" style="display: block;">
                                                <li>
                                                    <div class="accordion" id="acc2">
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Que es un NetWorker</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                    <video controls poster="images/gallery/videos/thumb-big-networker.jpg">
                                                                                        <source type="video/mp4" src="http://networkerprofessional.net/videos/networker/Networker.mp4" />
                                                                                    </video>
                                                                                </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Un NetWorker Professional se dedica a la formación.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Testimonios de la Universidad</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                    <video controls poster="images/gallery/videos/thumb-big-university.jpg">
                                                                                        <source src="http://networkerprofessional.net/videos/networker/TestimoniosUniversidad.mp4" />
                                                                                    </video>
                                                                                </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Todos los testimonios sobre la formación de la profesion NetWorker Professional.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="new">
                                <h2 class="topList h"><a class="trigger">Empresa ASEA </a></h2>
                                <div class="outer" style="display: none;">
                                    <div class="inner">
                                        <div class="accdiv" style="background-color: #DBDBDB; margin-top: -10px; margin-bottom: -35px;">
                                            <ul class="formItems" style="display: block;">
                                                <li>
                                                    <div class="accordion" id="acc3">
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">El Origen de ASEA</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                <video controls poster="images/gallery/videos/thumb-big-origenasea.jpg">
                                                                                    <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/OrigenAsea.mp4" />
                                                                                </video>
                                                                            </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Como ha empezado todo.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Tecnologia ASEA</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                    <video controls poster="images/gallery/videos/thumb-big-tecnologiaasea.jpg">
                                                                                        <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/TecnologiaAsea.mp4" />
                                                                                    </video>
                                                                                </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Toda la información sobre la tecnologia usada por ASEA.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Moleculas REDOX</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                <video controls poster="images/gallery/videos/thumb-big-moleculasredox.jpg">
                                                                                    <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/ComoFuncionanMoleculasRedox.mp4" />
                                                                                </video>
                                                                            </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">La explicación cientifica de como funcionan las moleculas REDOX.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Metabolitos/Deporte</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                    <video controls poster="images/gallery/videos/thumb-big-metabolitos.jpg">
                                                                                        <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/AseaMetabolitos.mp4" />
                                                                                    </video>
                                                                                </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Los metabolitos en el deporte.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">5 Hechos Cientificos</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                    <video controls poster="images/gallery/videos/thumb-big-5hechoscientficos.jpg">
                                                                                        <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/5hechoscientificosAsea.mp4" />
                                                                                    </video>
                                                                                </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Los 5 hechos cientificos de ASEA.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">La Ciencia de ASEA</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                <video controls poster="images/gallery/videos/thumb-big-queescienciaasea.jpg">
                                                                                    <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/LaCienciaAsea.mp4" />
                                                                                </video>
                                                                            </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Explicación de la ciencia de ASEA.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Testimonio Amparo</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                <video controls poster="images/gallery/videos/thumb-big-testimonioamparo.jpg">
                                                                                    <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/TestimonioAmparo.mp4" />
                                                                                </video>
                                                                            </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Confirma los beneficios de ASEA con el testimonio real de la recuperación de Amparo.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="new">
                                                            <h2 class="topList h"><a style="margin-bottom: 0px; margin-top: -1px;" class="trigger">Testimonio Sandra Witt</a></h2>
                                                            <div class="outer" style="display: none;">
                                                                <div class="inner">
                                                                    <div class="accdiv" style="background-color: #DBDBDB;">
                                                                        <ul class="formItems" style="display: block;">
                                                                            <li>
                                                                                <center>
                                                                                <video controls poster="images/gallery/videos/thumb-big-testimoniosandra.jpg">
                                                                                    <source type="audio/mp4" src="http://networkerprofessional.net/videos/asea/TestimonioSandraWitt.mp4" />
                                                                                </video>
                                                                            </center>
                                                                            </li>
                                                                            <li>
                                                                                <p style="text-align: justify;">Confirma los beneficios de ASEA con el testimonio real de Sandra Witt.</p>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
