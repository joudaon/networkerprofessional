<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Networker.Contacts" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
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
                            <h1>Contactos</h1>
                            <p>Si tienes alguna duda, por favor contáctanos</p>
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
                        <h3 class="panel-title blueBgColor ">Contactos</h3>
                    </div>
                    <div class="panel-body">
                        <div class="grid">
                            <br />
                            <div class="col-sm-8 col-sm-offset-2">
                                <p id="contactname" runat="server"></p>
                                <p>Telefono móvil: <a id="telephone" runat="server"></a></p>
                                <p>Email: <a id="emailsent" runat="server"></a></p>
                                <p id="skypeVisible" runat="server">Usuario Skype: <a id="skypeUser" runat="server"></a></p>
                            </div>
                            <br />
                            <div class="col-sm-8 col-sm-offset-2">
                                <h4 class="text-center" style="margin-bottom: 25px;">Sígueme en:</h4>
                                <div class="centerclass">
                                    <a id="facebookURL" runat="server" href="#" target="_blank">
                                        <img src="images/images/facebook-icon.png" alt="Facebook" />
                                    </a>
                                    <a id="twitterURL" runat="server" href="#" target="_blank">
                                        <img src="images/images/twitter-icon.png" alt="Twitter" />
                                    </a>
                                    <a id="linkedinURL" runat="server" href="#" target="_blank">
                                        <img src="images/images/linkedin-icon.png" alt="LinkedIn" />
                                    </a>
                                    <a id="youtubeURL" runat="server" href="#" target="_blank">
                                        <img src="images/images/youtube-icon.png" alt="YouTube" />
                                    </a>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="col-sm-8 col-sm-offset-2" style="padding-top: 10px">
                                <p><b><u>Contactos NetWorker Professional</u></b></p>
                                Soporte técnico:
                                <br />
                                <a href="mailto:support@networkerprofessional.net">support@networkerprofessional.net</a>
                                <br />
                                <br />
                                Alta de usuários: 
                                <br />
                                <a href="mailto:global@networkerprofessional.net">global@networkerprofessional.net</a>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
