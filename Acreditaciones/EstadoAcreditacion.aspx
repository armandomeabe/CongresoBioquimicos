<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EstadoAcreditacion.aspx.cs" Inherits="Acreditaciones.EstadoAcreditacion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" runat="server">
        <h2>Estado de mi acreditación</h2>
        <div class="row well">
            <div class="col-sm-4 col-lg-4">
                <div class="form-group">
                    <label for="DNI" class="col-md-4 control-label">DNI</label>
                    <div class="col-md-8">
                        <asp:TextBox MaxLength="100" runat="server" ID="DNI" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <asp:Button runat="server" ID="Buscar" OnClick="Buscar_OnClick" CssClass="btn btn-success" Text="Buscar" />
            </div>
        </div>
        <div class="row well">
            <asp:Label runat="server" ID="ResultLabel" Text="Ingrese su DNI y haga click en Buscar"></asp:Label>
            <br />
            <br />
            <% if (ViewState["ackId"] != null)
               { %>
                <a href="Certificado.aspx?ackId=<%: ViewState["ackId"] %>" target="_blank" class="btn btn-success">Imprimir Certificado</a>&nbsp;
            <% } %>
        </div>
    </div>

</asp:Content>
