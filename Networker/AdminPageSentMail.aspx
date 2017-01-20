<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageSentMail.aspx.cs" Inherits="Networker.AdminPageSentMail" MasterPageFile="~/MasterPage.Master" %>

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

        /*Change the Toogle Main Menu*/
        .nav-primary dl dt {
            padding-top: 4px;
        }

        /*Change secundary menu */
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
                            <h1>Envío de Correo</h1>
                            <p>Envío con plantilla corporativa</p>
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
                        <h3 class="panel-title blueBgColor">Envío de correo</h3>
                    </div>
                    <div class="panel-body">
                        <form id="sentForm" method="post" class="form-horizontal" runat="server" action="#">
                            <asp:ScriptManager runat="Server">
                            </asp:ScriptManager>

                            <div class="form-group">
                                <div class="centerclass">
                                    <p style="padding: 10px; font-family: Verdana;">El formato para envío masivo de correos tiene de ser separado por una coma: mail@networker.com, mail@networker.com</p>
                                </div>
                            </div>
                            <br />

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="mailto">Enviar a:</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" rows="5" id="mailto" name="mailto" placeholder="Introduzca las direcciones de correo deseadas" style="box-sizing: border-box;"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="subject">Assunto</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Assunto" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="name">Nombre</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Nombre del destinatario" style="box-sizing: border-box;" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="message">Mensaje</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" rows="15" id="message" name="message" placeholder="Mensaje" style="box-sizing: border-box;"></textarea>
                                </div>
                            </div>

                            <br />

                            <div class="form-group">
                                <div class="centerclass">
                                    <p style="padding: 10px; font-family: Verdana;">Para poder enviar de su cuenta de correo NetWorker, por favor indique su correo y contraseña</p>
                                </div>
                            </div>

                            <br />

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="email">Email NetWorker</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" style="box-sizing: border-box;" readonly="readonly" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="password">Password</label>
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

                            <br />
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <asp:Button ID="sentMail" runat="server" ClientIDMode="Static" OnClientClick="formvalidation();" class="btn btn-primary btn-block" OnClick="sentMail_Click" Text="Enviar"></asp:Button>
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
            El correo no ha sido enviado.
            <br />
            Por favor intente otra vez.
        </div>
        <div id="successMessage" runat="server" visible="false" class="alert alert-success" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Enhorabuena!</strong>
            <br />
            El correo ha sido enviado.
        </div>
    </div>
    <script>

        //LOADING GIF WITH JQUERY VALIDATION
        // unblock when ajax activity stops 
        $(document).ajaxStop($.unblockUI);

        function formvalidation() {

            $("#sentForm").validate({
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                    name: {
                        required: true,
                    },
                    password: {
                        required: true,
                    },
                    confirm_password: {
                        required: true,
                        equalTo: "#password"
                    },
                    message: {
                        required: true,
                        minlength: 5,
                        maxlength: 1000,
                    },
                    mailto: {
                        required: true,
                        maxlength: 500,
                    },
                    subject: {
                        required: true,
                        maxlength: 150,
                    }
                },
                messages: {
                    message: {
                        required: "Por favor introduzca un mensaje",
                    },
                    mailto: {
                        required: "Por favor introduzca al menos un correo",
                    },
                    name: {
                        required: "Por favor introduzca el nombre",
                    },
                    subject: {
                        required: "Por favor introduzca el assunto",
                    },
                    email: "Por favor introduzca un correo valido.",
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
