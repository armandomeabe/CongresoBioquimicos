<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PresentacionTrabajos.aspx.cs" Inherits="Acreditaciones.PresentacionTrabajos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron" runat="server">
        <h2>Envío de resúmenes</h2>
        <div class="row well">
            <div class="col-md-12">
                <h4>La fecha límite de envíos de resúmenes es hasta las 24 hs del día 17 de mayo de 2015, de no encontrarse habilitados por causas administrativas, deberán enviar un email a cobiolit@gmail.com, o a jamsantafe@gmail.com o comunicarse con los siguientes teléfonos: Colegio de Bioquímicos de Santa Fe Tel/Fax: +54 (342) 4534144 / 4120203 o Asociación Argentina de Microbiología +54 (342) 455-2203 para poder ser habilitados manualmente ya que el tiempo habrá expirado.</h4>
            </div>
        </div>
        
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
                <asp:Button runat="server" ID="Ingresar" OnClick="Ingresar_OnClick" CssClass="btn btn-success" Text="Ingresar" />
            </div>
        </div>
        <div class="row well">
            <asp:Label runat="server" ID="ResultLabel" Text="Ingrese su DNI para continuar. Recuerde que deberá estar acreditado para poder presentar un trabajo. Si su DNI no estuviera aún en el sistema, se le redirigirá por única vez a la página de acreditaciones y luego podrá continuar desde éste paso."></asp:Label>
        </div>
    </div>

</asp:Content>
