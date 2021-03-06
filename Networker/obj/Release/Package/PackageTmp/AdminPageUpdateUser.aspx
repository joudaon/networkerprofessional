﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageUpdateUser.aspx.cs" Inherits="Networker.AdminPageUpdateUser" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
    <script src="scripts/bootstrap.min.js" async="" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="bodyholder" runat="Server">
    <style>
        /*Change the validation label*/
        form.cmxform label.error, label.error {
            color: red;
            font-weight: 100;
            font-style: italic;
        }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1 id="lblhello" runat="server"></h1>
                            <p>Administre los datos de su pagina personal</p>
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
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title blueBgColor">Datos Personales</h3>
                    </div>
                    <div class="panel-body">
                        <form id="sentForm" method="post" class="form-horizontal" runat="server" action="#">
                            <asp:ScriptManager runat="Server">
                            </asp:ScriptManager>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="firstname">Nombre</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Nombre" style="box-sizing: border-box;" readonly="readonly" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="lastname">Apellidos</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Apellidos" style="box-sizing: border-box;" readonly="readonly" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="telephone">Telefono</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="telephone" name="telephone" placeholder="Telefono" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="email">Email</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email (Cuenta NetWorker)" style="box-sizing: border-box;" readonly="readonly" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="emailpersonal">Email Personal</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="emailpersonal" name="emailpersonal" placeholder="Email Personal" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="password">Password (Área Personal)</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="confirm_password">Confirma password</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirma password" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="skypeUser">Usuario Skype</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="skypeUser" name="skypeUser" placeholder="Skype User" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="facebookUrl">Facebook Url</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="facebookUrl" name="facebookUrl" placeholder="Facebook Url" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="virtualOffice">Oficina Virtual ASEA</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="virtualOffice" name="virtualOffice" placeholder="Oficina Virtual ASEA" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="twitterUrl">Twitter Url</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="twitterUrl" name="twitterUrl" placeholder="Twitter Url" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="linkedinUrl">Linkedin Url</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="linkedinUrl" name="linkedinUrl" placeholder="Linkedin Url" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="youtubeUrl">Canal YouTube</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="youtubeUrl" name="youtubeUrl" placeholder="Canal YouTube" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <br />
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <asp:Button ID="sentUser" runat="server" ClientIDMode="Static" OnClientClick="formvalidation();" class="btn btn-primary btn-block" OnClick="sentUser_Click" Text="Guardar"></asp:Button>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div id="errorMessage" runat="server" visible="false" class="alert alert-danger" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Atencion!!!</strong>
            <br />
            Sus datos no se han actualizado.
            <br />
            Por favor intente otra vez.
        </div>
        <div id="successMessage" runat="server" visible="false" class="alert alert-success" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Enhorabuena!</strong>
            <br />
            Sus datos se han actualizado.
        </div>
    </div>
    <script>
        //LOADING GIF WITH JQUERY VALIDATION
        // unblock when ajax activity stops 
        $(document).ajaxStop($.unblockUI);

        function ajaxcall() {
            $.ajax({ url: 'AdminPage.aspx', cache: false });
        }

        function formvalidation() {

            $("#sentForm").validate({
                rules: {
                    firstname: {
                        required: true,
                        maxlength: 250
                    },
                    lastname: {
                        required: true,
                        maxlength: 250
                    },
                    telephone: {
                        required: true,
                        maxlength: 15
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    emailpersonal: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5,
                        maxlength: 20
                    },
                    confirm_password: {
                        required: true,
                        minlength: 5,
                        maxlength: 20,
                        equalTo: "#password"
                    }
                },
                messages: {
                    firstname: {
                        required: "Por favor introduzca el nombre",
                    },
                    lastname: {
                        required: "Por favor introduzca los apellidos",
                    },
                    telephone: {
                        required: "Por favor introduzca el telefono móvil",
                    },
                    email: "Por favor introduzca un correo valido.",
                    emailpersonal: "Por favor introduzca un correo valido.",
                    password: {
                        required: "Por favor introduzca la password"
                    },
                    confirm_password: {
                        required: "Por favor introduzca la confirmación de la password",
                        equalTo: "Las passwords no son iguales"
                    }
                }
            });

            //we check if the form is valid
            if ($("#sentForm").valid()) {

                $.blockUI.defaults.overlayCSS.opacity = '0.1'; //So we can see the gif loading image
                $.blockUI.defaults.css = {
                    textAlign: 'center',
                    cursor: 'wait'
                };
                $.blockUI({
                    message: '<img src="images/images/loading.gif" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)" />',
                    css: {
                    },
                    showOverlay: true
                });
            }
        };
    </script>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


