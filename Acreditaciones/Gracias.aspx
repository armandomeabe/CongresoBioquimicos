<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gracias.aspx.cs" Inherits="Acreditaciones.Gracias" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Muchas gracias</h1>
        <p class="lead">Recibimos su solicitud de acreditación y la procesaremos a la brevedad.</p>
        <p class="lead">Entregar copia o envar por fax o email comprobante de transferencia realizada dentro de las 72hs. De lo contrario deberá realizar nuevamente su acreditación.</p>
        <hr />
        <p><a runat="server" href="~/" class="btn btn-primary btn-lg">Volver &raquo;</a></p>
        
        
        <hr />
        <div class="row">
            <div class="col-md-6">
                <h2>Colegio de Bioquímicos</h2>
                <table class="table table-responsive">
                    <tr>
                        <td>Banco</td>
                        <td>Nuevo Banco de Santa Fe</td>
                    </tr>
                    <tr>
                        <td>Sucursal</td>
                        <td>Casa Santa Fe (500001)</td>
                    </tr>
                    <tr>
                        <td>Cuenta</td>
                        <td>CTA. CTE. N° 19253/07</td>
                    </tr>
                    <tr>
                        <td>CBU</td>
                        <td>33005001 15000019253073</td>
                    </tr>
                    <tr>
                        <td>CUIT</td>
                        <td>30-65347252-4</td>
                    </tr>
                    <tr>
                        <td>Titular</td>
                        <td>Colegio de Bioquímicos de Santa Fe 1° Circ.</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-6">
                <h2>Asociación Arg. de Microbiología</h2>
                <table class="table table-responsive">
                    <tr>
                        <td>Banco</td>
                        <td>Macro S.A.</td>
                    </tr>
                    <tr>
                        <td>Sucursal</td>
                        <td>368-Profesionales</td>
                    </tr>
                    <tr>
                        <td>Cuenta</td>
                        <td>C.A. - Pesos - 436801607525500</td>
                    </tr>
                    <tr>
                        <td>CBU</td>
                        <td>28503682 40016075255009</td>
                    </tr>
                    <tr>
                        <td>CUIT</td>
                        <td>30-60746436-3</td>
                    </tr>
                    <tr>
                        <td>Titular</td>
                        <td>Asociación Argentina de Microbiología.</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
