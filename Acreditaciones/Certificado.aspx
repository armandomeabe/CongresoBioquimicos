<%@ Page Language="C#" MasterPageFile="~/Certificado.Master" AutoEventWireup="true" CodeBehind="Certificado.aspx.cs" Inherits="Acreditaciones.Certificado" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row well well-lg">
        <center><img src="Content/Imagenes/Slider/CertificadoHeader.png" style="width: 100%" /></center>

        <div class="row">
            <div class="col-md-4 pull-left">
                <h5>III Congreso de Bioquímicos del Litoral</h5>
            </div>
            <div class="col-md-4 pull-right">
                <h5>XVI Jornadas Argentinas de Microbiología</h5>
            </div>
        </div>
        <div class="row text-center">
            <h1>Constancia de Acreditación</h1>
        </div>
        <div class="row text-center">
            <h3>Certificamos que de acuerdo a nuestros registros <br/>
                y con comprobante de pago N° <asp:Label runat="server" ID="ComprobanteNro"></asp:Label><br/>
                el/la Sr/Sra. <asp:Label runat="server" ID="Nombre"></asp:Label>
                , documento N° <asp:Label runat="server" ID="DNI"></asp:Label><br/>
                se encuentra acreditado al III Congreso Bioquímico del Litoral y <br/>
                XVI Jornadas Argentinas de Microbiología<br/>
                que se realizará los días 5, 6 y 7 de Agosto de 2015 en la ciudad de Santa Fe, Argentina, en el <br/>
                Salón de Convenciones Los Maderos del Puerto de Santa Fe.
            </h3>
        </div>
        <div class="row text-right">
            <h3>Santa Fe, <%: DateTime.Now.ToString("dd/MM/yyyy") %></h3>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            window.print();
        });
    </script>
</asp:Content>
