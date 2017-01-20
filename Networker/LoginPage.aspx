<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Networker.LoginPage" MasterPageFile="~/MasterPage.Master" %>

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
                            <h1>Login</h1>
                            <p>Introduzca sus credenciales.</p>
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
                <br />
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <h4 class="text-center" style="margin-bottom: 25px;">Inicia sessión para empezar</h4>
                        <form id="loginform" method="post" class="form-horizontal" runat="server" action="#">
                            <%--EMAIL--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="email">Email</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <%--PASSWORD--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="password">Password</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="box-sizing: border-box;" />
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <%--BUTTON--%>
                                        <asp:Button ID="sentLogin" runat="server" class="btn btn-primary btn-block" OnClientClick="formvalidation();" OnClick="sentLogin_Click" Text="Iniciar sesión"></asp:Button>
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
    </div>

    <div id="errorMessage" runat="server" visible="false" class="alert alert-danger" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%)">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Login</strong>
        <br />
        El usuario introducido no existe.
            <br />
        Por favor intente otra vez.
    </div>
    <script type="text/javascript">
        //LOADING GIF WITH JQUERY VALIDATION
        // unblock when ajax activity stops 
        $(document).ajaxStop($.unblockUI);

        function formvalidation() {

            $("#loginform").validate({
                rules: {
                    password: {
                        required: true,
                        maxlength: 20
                    },
                    email: {
                        required: true,
                        email: true
                    }
                },
                messages: {
                    password: {
                        required: "Por favor introduzca la password",
                    },
                    email: "Por favor introduzca un correo valido.",
                }
            });

            //we check if the form is valid
            if ($("#loginform").valid()) {

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
</asp:Content>
