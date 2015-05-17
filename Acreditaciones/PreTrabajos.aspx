<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PreTrabajos.aspx.cs" Inherits="Acreditaciones.PreTrabajos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row well">
        <div class="col-md-12">
            <h2>Bienvenido, Sr./Sra. <i><strong>
                <asp:Label runat="server" ID="lbl1"></asp:Label></strong></i>. Usted puede cargar hasta dos trabajos ahora.</h2>

        </div>
        <div class="col-lg-6">
            <h2>Trabajo 1:</h2>
            <p>
                <asp:Label runat="server" ID="lblTitulo1"></asp:Label></p>
            <p>
                <asp:Label runat="server" ID="lblBrief1"></asp:Label></p>
            <p>
                <asp:Button runat="server" ID="btnAction1" Text="Crear / Editar »" CssClass="btn btn-primary" OnClick="edit1" /></p>
            <% if (this.workA != null)
               {
            %>
            <a href="VerTrabajo.aspx?WorkID=<%: this.workA.Id %>" target="_blank" class="btn btn-info">Ver o imprimir el trabajo</a>
            <% } %>
        </div>

        <div class="col-lg-6">
            <h2>Trabajo 2:</h2>
            <p>
                <asp:Label runat="server" ID="lblTitulo2"></asp:Label></p>
            <p>
                <asp:Label runat="server" ID="lblBrief2"></asp:Label></p>
            <p>
                <asp:Button runat="server" ID="btnAction2" Text="Crear / Editar »" CssClass="btn btn-primary" OnClick="edit2" /></p>
            <% if (this.workB != null)
               {
            %>
            <a href="VerTrabajo.aspx?WorkID=<%: this.workB.Id %>" target="_blank" class="btn btn-info">Ver o imprimir el trabajo</a>
            <% } %>
        </div>

    </div>
</asp:Content>
