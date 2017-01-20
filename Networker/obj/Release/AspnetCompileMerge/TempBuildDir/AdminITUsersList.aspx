<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminITUsersList.aspx.cs" Inherits="Networker.AdminITUsersList" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="styles/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
    <link href="styles/dataTables.bootstrap.css" rel="stylesheet" />
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
                            <h1>Listado de Networkers</h1>
                            <p>Todos los networkers registrados</p>
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
            <br />
            <div class="col-sm-8 col-sm-offset-2">
                <div class="panel panel-primary" style="padding: 10px">
                    <br />
                    <div class="table-responsive" style="padding: 10px; border: none;">
                        <asp:Repeater ID="repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                                <table width="100%" class="table table-striped table-bordered dt-responsive nowrap" id="datatable" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>Telefono</th>
                                            <th>Email</th>
                                            <th>Web</th>
                                            <th>Active</th>
                                            <th>Entry Date</th>
                                        </tr>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem, "Id") %>
                                    </td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem, "Name") %>
                                    </td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem, "LastName") %>
                                    </td>
                                    <td>
                                        <a href="tel:<%# DataBinder.Eval(Container.DataItem, "Telephone") %>"><%# DataBinder.Eval(Container.DataItem, "Telephone") %>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="mailto:<%# DataBinder.Eval(Container.DataItem, "Email") %>">Envíar email
                                        </a>
                                    </td>
                                    <td>
                                        <a href="http:\\www.networkerprofessional.net\Default.aspx?id=<%# DataBinder.Eval(Container.DataItem, "Id") %>">Entrar
                                        </a>
                                    </td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem, "Active") %>
                                    </td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem, "EntryDate") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <br />
                        <br />
                        <br />
                    </div>
                    <br />
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:networkerDB %>"
                SelectCommand="SELECT [Id], [Name], [LastName], [Telephone], [Email], [Active], [EntryDate]  FROM [Users] ORDER BY [Name]"></asp:SqlDataSource>
            <script src="scripts/jquery.dataTables.js"></script>
            <script src="scripts/dataTables.bootstrap.js"></script>
            <script type="text/javascript">
                $('#datatable').dataTable({
                    "language": {
                        "paginate": {
                            "first": "Primera",
                            "last": "Ultima",
                            "next": "Próxima",
                            "previous": "Anterior"
                        },
                        "emptyTable": "No existen networkers",
                        "info": "Registro _START_ de _END_ de un total de _TOTAL_",
                        "infoEmpty": "Registro 0 de 0 de un total de 0",
                        "lengthMenu": "Mostrar _MENU_ registros",
                        "search": "Buscar:",
                        "zeroRecords": "No existen networkers con ese filtro"
                    }
                });
            </script>
        </div>
    </div>
</asp:Content>
