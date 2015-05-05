<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrabajoRecibido.aspx.cs" Inherits="Acreditaciones.TrabajoRecibido" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Muchas gracias</h1>
        <p class="lead">Recibimos su trabajo y lo asignaremos a un profesional revisor a la brevedad.</p>
        <h4>Recibido en área <strong><asp:Label runat="server" ID="areaId"></asp:Label></strong> en la posición <strong><asp:Label runat="server" ID="areaPosicion"></asp:Label></strong></h4>
        <hr />
        <p>
            <a href="VerTrabajo.aspx?WorkID=<%: currentWork.Id %>" target="_blank" class="btn btn-info">Ver o imprimir el trabajo</a>
           <a runat="server" href="~/" class="btn btn-primary">Volver &raquo;</a>
        </p>


    </div>

</asp:Content>
