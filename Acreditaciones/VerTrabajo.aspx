<%@ Page Language="C#" MasterPageFile="~/Certificado.Master" AutoEventWireup="true" CodeBehind="VerTrabajo.aspx.cs" Inherits="Acreditaciones.VerTrabajo" %>

<%@ Import Namespace="Acreditaciones.Models" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><%= this.currentWork.Title %></h4>
            </div>
            <div class="modal-body">
                <h3>Area: <%: this.currentWorkArea != null ? this.currentWorkArea.Nombre : "" %></h3>
                <h4>Email de contacto: <%: this.currentAck.Email %></h4>
                <% if (this.currentWork.Authors.Any())
                   { %>

                <p>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <% foreach (Author author in this.currentWork.Authors.OrderBy(x => x.OrderPosition).ToList())
                               { %>
                            <%: author.Nombre %> <sup><%: author.Establishment.Number %></sup>, &nbsp;
                                <% } %>
                        </li>
                    </ul>
                </p>

                <% } %>
                <% if (this.currentWork.Establishments.Any())
                   { %>
                <p>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <% foreach (Establishment establishment in this.currentWork.Establishments.OrderBy(x => x.Number))
                               { %>
                            <sup><%: establishment.Number %></sup> <%: establishment.Nombre %>,&nbsp;<br />
                            <% } %>
                        </li>
                    </ul>
                </p>
                <% } %>

                <p>
                    <%= this.currentWork.Body %>
                </p>


            </div>
            <div class="modal-footer">
                <input type="button" onclick="window.print();" value="Imprimir" class="btn btn-info" />
            </div>
        </div>
    </div>



    <script type="text/javascript">
        $(document).ready(function () {
            window.print();
        });
    </script>
</asp:Content>
