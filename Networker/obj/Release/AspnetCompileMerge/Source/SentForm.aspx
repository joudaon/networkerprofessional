<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SentForm.aspx.cs" Inherits="Networker.SentForm" MasterPageFile="~/MasterPage.Master" %>


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

        /*Change secundary menu */
        .nav-primary .nav-consumer ul li a {
            padding-top: 6px;
        }

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
                            <h1>Contacto</h1>
                            <p>Por favor rellene todos los campos obligatorios</p>
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
                        <h3 class="panel-title blueBgColor ">Formulario de contacto</h3>
                    </div>
                    <div class="panel-body">
                        <form id="sentForm" method="post" class="form-horizontal" runat="server" action="#">
                            <asp:ScriptManager runat="Server">
                            </asp:ScriptManager>
                            <br />
                            <%--FIRST NAME--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="firstname">Nombre</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Nombre" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <%--LAST NAME--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="lastname">Apellidos</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Apellidos" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <%--TELEPHONE--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="telephone">Telefono</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="telephone" name="telephone" placeholder="Telefono" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <%--EMAIL--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="email">Email</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <%--MESSAGE--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="message">Mensaje</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" rows="10" id="message" name="message" placeholder="Mensaje" style="box-sizing: border-box;"></textarea>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <%--BUTTON--%>
                                        <asp:Button ID="sentMail" runat="server" ClientIDMode="Static" class="btn btn-primary btn-block" OnClientClick="formvalidation();" OnClick="sentMail_Click" Text="Enviar"></asp:Button>
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
        <%--ERROR MESSAGE--%>
        <div id="errorMessage" runat="server" visible="false" class="alert alert-danger" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Atencion!!!</strong>
            <br />
            El correo no ha sido enviado.
            <br />
            Por favor intente otra vez.
        </div>
        <%--SUCCESS MASSAGE--%>
        <div id="successMessage" runat="server" visible="false" class="alert alert-success" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Enhorabuena!</strong>
            <br />
            El correo ha sido enviado.
        </div>
    </div>
    <script type="text/javascript">
        //LOADING GIF WITH JQUERY VALIDATION
        // unblock when ajax activity stops 
        $(document).ajaxStop($.unblockUI);

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
                            maxlength: 15
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        message: {
                            required: true,
                        }
                    },
                    messages: {
                        firstname: {
                            required: "Por favor introduzca el nombre",
                        },
                        lastname: {
                            required: "Por favor introduzca los apellidos",
                        },
                        email: "Por favor introduzca un correo valido.",
                        message: {
                            required: "Por favor introduzca un mensaje",
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
