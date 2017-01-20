<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIT.aspx.cs" Inherits="Networker.AdminIT" MasterPageFile="~/MasterPage.Master" %>

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
                            <h1>Departamento IT</h1>
                            <p>Administración de Networker Professional data</p>
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
                <img src="images/logos/networker-logo.png" alt="Networker Professional" />
                </a>
            </div>
            <br />
            <div class="grid">
                <div class="grid-row">
                    <div class="section-wrap col-3">
                        <div class="module promo-s dark">
                            <div class="desktop-fragments-promoSShort-4 bkg-img">
                                <a href="AdminITSentMail.aspx" title="Correo alta usuario">
                                    <div class="module-body">
                                        <div class="info">
                                            <h3>Correo alta usuario</h3>
                                            <p>Envío de correo a los usuarios para pedido de datos </p>
                                            <p class="product-cta">Entrar </p>
                                        </div>
                                    </div>
                                    <span class="hover-down"></span></a>
                            </div>
                        </div>
                        <div class="module promo-s dark">
                            <div class="desktop-fragments-promoSShort-5 bkg-img">
                                <a href="AdminITAddUser.aspx" title="Alta de usuarios">
                                    <div class="module-body">
                                        <div class="info">
                                            <h3>Alta Usuario</h3>
                                            <p>Alta de usuarios en el sistema </p>
                                            <p class="product-cta">Entrar </p>
                                        </div>
                                    </div>
                                    <span class="hover-down"></span></a>
                            </div>
                        </div>
                        <div class="module promo-s dark">
                            <div class="desktop-fragments-promoSShort-6 bkg-img">
                                <a href="AdminITUsersList.aspx" title="Listado de todos los usuarios">
                                    <div class="module-body">
                                        <div class="info">
                                            <h3>Usuarios</h3>
                                            <p>Listado de usuarios </p>
                                            <p class="product-cta">Entrar </p>
                                        </div>
                                    </div>
                                    <span class="hover-down"></span></a>
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
</asp:Content>


