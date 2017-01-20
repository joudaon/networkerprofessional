<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminITSentMail.aspx.cs" Inherits="Networker.AdminITSentMail" MasterPageFile="~/MasterPage.Master" %>

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
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>Correo alta usuario</h1>
                            <p>Envio de correos para alta de usuarios</p>
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
                        <h3 class="panel-title blueBgColor ">Envío de correo/s</h3>
                    </div>
                    <div class="panel-body">
                        <form id="sentForm" method="post" class="form-horizontal" runat="server" action="#">
                            <asp:ScriptManager runat="Server">
                            </asp:ScriptManager>
                            <br />
                            <div class="form-group">
                                <div class="centerclass"><p style="padding:10px; font-family:Verdana;">El formato para envío masivo de correos tiene de ser separado por una coma: mail@gmail.com,mail@outlook.com.</p></div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="mailto">Mail To:</label>
                                <div class="col-sm-6">
                                    <textarea class="form-control" rows="20" id="mailto" name="mailto" placeholder="Introduzca las direcciones de correo deseadas." style="box-sizing: border-box;"></textarea>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-5">
                                        <asp:Button ID="sentMail" runat="server" ClientIDMode="Static" class="btn btn-primary btn-block" OnClick="sentMail_Click" Text="Enviar"></asp:Button>
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

        function ajaxcall() {
            $.ajax({ url: 'SentForm.aspx', cache: false });
        }

        $(document).ready(function () {
            $('#sentMail').click(function () {

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
            });

            ajaxcall();

        });

    </script>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
