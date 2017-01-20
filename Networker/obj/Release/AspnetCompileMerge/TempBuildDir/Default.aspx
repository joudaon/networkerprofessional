<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Networker.Default" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="bodyholder" runat="Server">
    <style>
        video {
            width: 90%;
            height: auto;
            border: solid;
            border-width: 6px;
            border-color: #b2b2b2;
            cursor: pointer;
        }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>NetWorker Professional</h1>
                            <p>La carrera profesional del siglo XXI</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="grid">
        <div class="grid-row">
            <div class="centerclass"><img src="images/logos/networker-logo.png" alt="Networker Professional" /></div>
            <div class="centerclass"><img id="imgFoto" runat="server" /></div>
            <br />
            <div class="centerclass"><h3 class="h2heading" runat="server" id="CustumerName"></h3></div>
            <br />
        </div>
    </div>
    <br />
    <div class="grid">
        <div class="grid-row">
            <div class="section-wrap col-3">
                <div class="module promo-s dark">
                    <div class="desktop-fragments-promoSShort-1 bkg-img">
                        <a href="SentForm.aspx" title="Contacto">
                            <div class="module-body">
                                <div class="info">
                                    <h3>Contacto</h3>
                                    <p>Rellena un breve formulario y en breve me pondré en contacto contigo. </p>
                                    <p class="product-cta">Entrar </p>
                                </div>
                            </div>
                            <span class="hover-down"></span></a>
                    </div>
                </div>
                <div class="module promo-s dark">
                    <div class="desktop-fragments-promoSShort-3 bkg-img">
                        <a href="Formacion.aspx" title="Alta de usuarios">
                            <div class="module-body">
                                <div class="info">
                                    <h3>Universidades</h3>
                                    <p>Infórmate de como ser un NetWorker Professional</p>
                                    <p class="product-cta">Entrar </p>
                                </div>
                            </div>
                            <span class="hover-down"></span></a>
                    </div>
                </div>
                <div class="module promo-s dark">
                    <div class="desktop-fragments-promoSShort-2 bkg-img">
                        <a href="MultimediaGallery.aspx" title="Galeria Multimedia">
                            <div class="module-body">
                                <div class="info">
                                    <h3>Galeria Multimedia</h3>
                                    <p>Toda la información, testimonios, historia y mucho más. </p>
                                    <p class="product-cta">Entrar </p>
                                </div>
                            </div>
                            <span class="hover-down"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-8 col-sm-offset-2">
        <div class="grid">
            <div class="default-container minwidth75">
                <div id="containerNetWorker">
                    <div id="mainPage">
                        <h3 class="h2heading">NetWorker Professional</h3>
                        <div class="accordion" id="acc1">
                            <div class="new">
                                <h2 class="topList h"><a class="trigger">&nbsp;&nbsp;Cuál es nuestra profesi&oacute;n</a></h2>
                                <div class="outer" style="display: none;">
                                    <div class="inner">
                                        <div class="accdiv">
                                            <ul class="formItems" style="display: block;">
                                                <li>
                                                    <div class="centerclass">
                                                        <video controls poster="images/gallery/videos/thumb-big-networker.jpg">
                                                            <source type="video/mp4" src="http://networkerprofessional.net/videos/networker/Networker.mp4" />
                                                        </video>
                                                    </div>
                                                </li>
                                                <li>
                                                    <br />
                                                    <p style="text-align: justify;">Un &ldquo;Networker&rdquo; es un profesional que tiene un sistema de distribuci&oacute;n internacional, poniendo en contacto directo al consumidor con la f&aacute;brica o laboratorio. Un Networker Profesional tiene ademas la capacidad de crear relaciones sostenibles, ayudando al desarrollo personal y profesional de otras personas. Como Networkers Profesionales tenemos formación constante para aprender y ejercer un LIDERAZGO empresarial efectivo y de calidad. Esto nos lleva a tener un NEGOCIO POTENCIAL con gancias ilimitadas que genera una RENTA VITALICIA para nosotros y nuestra descendencia.</p>
                                                    <p>La profesi&oacute;n Networker Professional está avalada por: </p>
                                                    <br />
                                                    <div class="centerclass"><img src="images/university/universidad-complutense.png" /><img src="images/university/universidad-deusto.gif" /></div>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <div class="centerclass"><a href="http://networkerprofessional.net/documents/pdf/Terminos&Condiciones.pdf" target="_blank">TERMINOS Y CONDICIONES</a></div>
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
        <br />
    </div>
    <br />
    <br />
</asp:Content>







