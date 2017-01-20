<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultimediaGalleryPhotos.aspx.cs" Inherits="Networker.MultimediaGalleryPhotos" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css" />
    <script src="scripts/bootstrap.min.js" async="" type="text/javascript"></script>
    <link href="styles/lightbox.css" rel="stylesheet" />

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

        .img-thumbnail {
            width: 100px;
            height: 100px;
        }
    </style>
    <div class="grid-row">
        <div class="module header-xxl desktop-fragments-headerXXL">
            <div class="header-xxl-bespoke-bgr">
                <div class="grid-inner">
                    <div class="module-body">
                        <div class="info">
                            <h1>Fotos</h1>
                            <p>Descubre todos los eventos Networker</p>
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
    <div class="centerclass">
        <div class="col-md-12" id="photoGallery" runat="server" visible="false">
        </div>
        <form if="form" runat="server">
            <asp:Panel id="pnlPhotoalbums" runat="server">
            </asp:Panel>
        </form>
    </div>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/lightbox.js"></script>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
