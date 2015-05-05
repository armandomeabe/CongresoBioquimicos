<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Acreditar.aspx.cs" Inherits="Acreditaciones.Acreditar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" runat="server" name="maindiv" id="maindiv">
        <h1>Acreditación Online</h1>
        <p class="lead">III Congreso de Bioquímicos del Litoral, XVI Jornadas Argentinas de Microbiología.</p>
        <p class="lead">5, 6 y 7 de agosto de 2015. Santa Fe, Argentina.</p>
        <hr />
        <div class="bg-danger" runat="server" id="divValidaciones">
            <h2 runat="server" ID="tituloErrores">Algunos campos obligatorios no fueron completados o no cumplen con los requisitos, por favor verifique la información ingresada</h2>
        </div>
        <div class="form-horizontal" role="form">
            <div class="row well">
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Apellido" class="col-md-4 control-label">Apellido <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Apellido" CssClass="form-control" required title="Debe ingresar su apellido"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Nombre" class="col-md-4 control-label">Nombre <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Nombre" CssClass="form-control" required title="Debe ingresar su nombre"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Profesion" class="col-md-4 control-label">Profesión <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Profesion" CssClass="form-control" required title="Debe ingresar su profesión"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Pais" class="col-md-4 control-label">País <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Pais" CssClass="form-control" required title="Debe ingresar su país"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Provincia" class="col-md-4 control-label">Provincia <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Provincia" CssClass="form-control" required title="Debe ingresar su provincia"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Localidad" class="col-md-4 control-label">Localidad <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Localidad" CssClass="form-control" required title="Debe ingresar su localidad"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Direccion" class="col-md-4 control-label">Dirección <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Direccion" CssClass="form-control"  required title="Debe ingresar su dirección"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Telefono" class="col-md-4 control-label">Teléfono <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="Telefono" CssClass="form-control"  required title="Debe ingresar un teléfono"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Movil" class="col-md-4 control-label">Móvil <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <table class="table-responsive">
                                <tr>
                                    <td style="width: 50px;">
                                        <asp:TextBox MaxLength="100" runat="server" ID="Movil_A" CssClass="form-control" placeholder="+54"  required title="Debe ingresar el código internacional"></asp:TextBox>
                                    </td>
                                    <td style="width: 60px;">
                                        <asp:TextBox MaxLength="100" runat="server" ID="Movil_B" CssClass="form-control" placeholder="342"  required title="Debe ingresar el código de área, sin 0"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox MaxLength="100" runat="server" ID="Movil_C" CssClass="form-control" placeholder="5203040"  required title="Debe ingresar su número de celular, sin 15"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="NumeroMatricula" class="col-md-4 control-label">Número de Matrícula</label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="NumeroMatricula" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="NumeroSocio" class="col-md-4 control-label">Número de Socio</label>
                        <div class="col-md-8">
                            <asp:TextBox MaxLength="100" runat="server" ID="NumeroSocio" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="Email" class="col-md-4 control-label">Email <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="Email" MaxLength="100" CssClass="form-control" required title="Debe ingresar su email"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="form-group">
                        <label for="DNI" class="col-md-4 control-label">DNI <span style="color: #FF3300">*</span></label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="DNI" MaxLength="100" CssClass="form-control" required title="Debe ingresar su DNI"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <h3>Para continuar la acreditación elija su condición y cliquee sobre el valor correspondiente.</h3>
        <div class="row">
            <div class="col-md-6">
                <h2>Colegio de Bioquímicos</h2>
                <table class="table table-responsive">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>Hasta 31 de Marzo de 2015</td>
                        <td>Hasta 30 de Junio de 2015</td>
                        <td>Hasta Evento Inclusive</td>
                    </tr>
                    <tr>
                        <td>Colegiado</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button3" CommandArgument="(Col. Bioq.) Colegiado $700" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 700" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button4" CommandArgument="(Col. Bioq.) Colegiado $900" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 900" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button2" CommandArgument="(Col. Bioq.) Colegiado $1100" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1100" /></td>
                    </tr>
                    <tr>
                        <td>Docente UNL</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button5" CommandArgument="(Col. Bioq.) Docente UNL $700" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 700" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button6" CommandArgument="(Col. Bioq.) Docente UNL $900" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 900" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button7" CommandArgument="(Col. Bioq.) Docente UNL $1100" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1100" /></td>
                    </tr>
                    <tr>
                        <td>No Colegiado</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button8" CommandArgument="(Col. Bioq.) No COlegiado $1400" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1400" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button9" CommandArgument="(Col. Bioq.) No COlegiado $1800" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1800" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button10" CommandArgument="(Col. Bioq.) No COlegiado $2200" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 2200" /></td>
                    </tr>
                    <tr>
                        <td>Estudiante</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button11" CommandArgument="(Col. Bioq.) Estudiante $350" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 350" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button12" CommandArgument="(Col. Bioq.) Estudiante $450" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 450" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button13" CommandArgument="(Col. Bioq.) Estudiante $550" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 550" /></td>
                    </tr>
                    <tr>
                        <td>Extranjero</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button14" CommandArgument="(AAM) Extranjero U$S 160" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 160" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button15" CommandArgument="(AAM) Extranjero U$S 220" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 220" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button16" CommandArgument="(AAM) Extranjero U$S 260" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 260" /></td>
                    </tr>
                </table>
            </div>
            <div class="col-md-6">
                <h2>Asociación Arg. de Microbiología</h2>
                <table class="table table-responsive">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>Hasta 31 de Marzo de 2015</td>
                        <td>Hasta 30 de Junio de 2015</td>
                        <td>Hasta Evento Inclusive</td>
                    </tr>
                    <tr>
                        <td>Socios</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button17" CommandArgument="(AAM) Socio $ 700" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 700" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button18" CommandArgument="(AAM) Socio $ 900" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 900" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button19" CommandArgument="(AAM) Socio $ 1100" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1100" /></td>
                    </tr>
                    <tr>
                        <td>No Socios</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button23" CommandArgument="(AAM) No Socio $ 1400" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1400" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button24" CommandArgument="(AAM) No Socio $ 1800" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 1800" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button25" CommandArgument="(AAM) No Socio $ 2200" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 2200" /></td>
                    </tr>
                    <tr>
                        <td>Estudiante</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button26" CommandArgument="(AAM) Estudiante $350" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 350" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button27" CommandArgument="(AAM) Estudiante $ 450" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 450" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button28" CommandArgument="(AAM) Estudiante $ 550" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="$ 550" /></td>
                    </tr>
                    <tr>
                        <td>Extranjero</td>
                        <td class="etapa_1">
                            <asp:Button runat="server" ID="Button20" CommandArgument="(AAM) Extranjero U$S160" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 160" /></td>
                        <td class="etapa_2">
                            <asp:Button runat="server" ID="Button21" CommandArgument="(AAM) Extranjero U$S220" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 220" /></td>
                        <td class="etapa_3">
                            <asp:Button runat="server" ID="Button22" CommandArgument="(AAM) Extranjero U$S260" OnClick="Validar" CssClass="btn btn-primary btn-sm btn-block" Text="u$s 260" /></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr />
        <div class="row etapa_2">
            <p style="font-size: 14px;">A partir del 1 de mayo de 2015 y hasta el 30 de junio de 2015, si pertenece al Colegio de Bioquímicos de Santa Fe de 1ra Circunscripción o al Colegio de Bioquímicos de Entre Ríos, la inscripción podrá realizarse hasta en 2 cuotas, debiendo estar saldado al 30 de junio.</p>
            <asp:Button runat="server" ID="Button1" CommandArgument="(Colegio de Bioq. 1ra circns. ó Colegio de bioq E.Ríos o Docente UNL) 3 cuotas de $ 300" OnClick="Validar" CssClass="btn btn-primary" Text="2 cuotas" />
        </div>

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

    <script type="text/javascript">
        $(document).ready(function () {
            $('.etapa_1 input').prop('disabled', true);
            $('.etapa_2 input').prop('disabled', true);
            $('.etapa_3 input').prop('disabled', true);

            $('<%: ViewState["etapa"] %>').prop('disabled', false);


            
        });
    </script>

</asp:Content>
