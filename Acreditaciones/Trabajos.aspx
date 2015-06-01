<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Trabajos.aspx.cs" Inherits="Acreditaciones.Trabajos" %>

<%@ Import Namespace="Acreditaciones.Models" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" runat="server" id="divComentariosDelEvaluador">
        <div class="col-md-12">
            <h2>Comentarios del evaluador</h2>
            <h3>El evaluador que supervisó su trabajo decidió solicitarle a usted que realice modificaciones antes de aprobarlo. Por favor considere a continuación los comentarios dejados por el evaluador al momento de supervisar su trabajo.</h3>
        </div>
        <div class="container">
            <div class="bg-danger" runat="server" id="div2">
                <h2 runat="server" id="H1">Sin comentarios por parte del evaluador.</h2>
            </div>
        </div>
    </div>


    <asp:HiddenField runat="server" ID="hiddenTitulo" />
    <asp:HiddenField runat="server" ID="hiddenTrabajo" />
    <asp:HiddenField runat="server" ID="hiddenEstablishment" Value="test" />
    <div runat="server" id="Editor">
        <% if (currentWork.Establishments.Any())
           { %>
        <div class="jumbotron" runat="server">
            <div class="container">
                <div class="col-md-12">
                    <h2>Autores</h2>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Agregar autor</h3>
                        <h4 style="color: red;">Indicar apellido e iniciales, sin puntos ni comas, ejemplo: López JC</h4>
                    </div>
                    <div class="col-md-1">
                        <label class="control-label">Agregar autor</label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox runat="server" ID="NuevoAutorNombre" placeholder="López JC" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <label class="control-label">Lugar de trabajo del autor</label>
                    </div>
                    <div class="col-md-11">
                        <asp:DropDownList runat="server" ID="ddlSeleccioneEstablecimiento" CssClass="dropdown form-control" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">&nbsp;</div>
                    <div class="col-md-11">
                        <a href="#" onclick="agregarAutor()" class="btn btn-success">Agregar autor</a>
                        <%--<asp:Button runat="server" Text="Agregar autor" OnClick="AgregarAutor" CssClass="btn btn-success" />--%>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <label class="control-label">Autores</label>
                    </div>
                    <div class="col-md-11">
                        <ul id="autores" class="list-group">
                            <%--<li class="list-group-item"><strong><%: currentAck.Apellido %>, <%: currentAck.Nombre %></strong> (Presenta este trabajo)</li>--%>

                            <% foreach (Author author in this.currentWork.Authors.OrderBy(x => x.OrderPosition).ToList())
                               {
                                   if (author.IsPresenter.HasValue && author.IsPresenter.Value)
                                   { %>
                            <li class="list-group-item"><strong><%: author.Nombre %> <sup><%: author.Establishment.Number %></sup> - Presenta este trabajo</strong>
                                <a href="#" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick=" deleteAuthor(<%: author.id %>);  "><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="setPresenter(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-user" aria-hidden="true"></span><strong>Es presentador de este trabajo</strong></a>

                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="bajarOrden(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-download" aria-hidden="true"></span></a>
                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="subirOrden(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a></li>
                            <% }
                                   else
                                   { %>
                            <li class="list-group-item"><%: author.Nombre %> <sup><%: author.Establishment.Number %></sup>
                                <a href="#" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick=" deleteAuthor(<%: author.id %>);  "><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="setPresenter(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Establecer como presentador</a>

                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="bajarOrden(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-download" aria-hidden="true"></span></a>
                                <a href="#" type="button" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick="subirOrden(<%: author.id %>, <%: currentWork.Id %>);  "><span class="glyphicon glyphicon-upload" aria-hidden="true"></span></a>
                            </li>
                            <% }
                               } %>
                        </ul>

                        <%--<asp:Button runat="server" Text="Borrar autores" CssClass="btn btn-danger" OnClick="resetAuthors" />--%>
                    </div>
                </div>
            </div>
        </div>
        <% }
           else
           { %>
        <div class="jumbotron" runat="server">
            <div class="container">
                <div class="col-md-12">
                    <h2>Ingrese al menos un establecimiento para poder agregar autores.</h2>
                </div>
            </div>
        </div>
        <% } %>



        <div class="jumbotron" runat="server">
            <div class="container">
                <div class="col-md-12">
                    <h2>Instituciones</h2>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Agregar institución</h3>
                    </div>
                    <div class="col-md-1">
                        <label class="control-label">Nombre</label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox runat="server" ID="NuevoEstablecimientoNombre" CssClass="form-control"></asp:TextBox>
                        <p><i style="color: red; font-size: medium">* Indicar nombre completo de laboratorio/empresa/hospital/instituto/cátedra/departamento/etc., calle y número, código postal, ciudad, provincia y país</i></p>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">&nbsp;</div>
                    <div class="col-md-11">

                        <a href="#" class="btn btn-success" onclick="agregarEstablecimiento()"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp; Agregar establecimiento</a>
                        <%--<asp:Button runat="server" Text="Agregar establecimiento" OnClick="AgregarEstablecimiento" CssClass="btn btn-success" />--%>
                    </div>
                </div>
                <% if (currentWork.Establishments.Any())
                   { %>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <label class="control-label">Instituciones</label>
                    </div>
                    <div class="col-md-11">
                        <ul class="list-group">
                            <% foreach (Establishment establishment in this.currentWork.Establishments.OrderBy(x => x.Number))
                               { %>
                            <li class="list-group-item"><sup><%: establishment.Number %></sup> <%: establishment.Nombre %> &nbsp;
                                <a href="#" class="btn btn-sm pull-right" style="margin-top: -5px; margin-left: 2px;" onclick=" deleteEstablishment(<%: establishment.id %>);  "><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                            </li>
                            <% } %>
                        </ul>
                        <asp:Button runat="server" Text="Borrar instituciones" CssClass="btn btn-danger" OnClick="resetEstablishments" />
                    </div>
                </div>
                <% } %>
            </div>
        </div>

        <div class="jumbotron" runat="server">
            <div class="col-md-12">
                <h2>Resumen</h2>
            </div>
            <div class="container">
                <div class="bg-danger" runat="server" id="divValidaciones">
                    <h2 runat="server" id="tituloErrores">Algunos campos obligatorios no fueron completados o no cumplen con los requisitos, por favor verifique la información ingresada</h2>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <label class="col-md-1 control-label">Estado</label>
                    </div>
                    <div class="col-md-11">
                        <h4>Su trabajo se encuentra en estado de <i><strong>Edición</strong></i>. Ésto significa que puede editarlo y guardar su progreso siempre que lo necesite. Recuerde que una vez que decida <i>'<strong>Finalizar su propuesta</strong>'</i> (mediante el botón inferior derecho), no podrá continuar editándola y ésta pasará a estado de <i><strong>Revisión</strong></i>. Luego de ésto, pasará a estado <i><strong>Aceptada</strong></i> o se requerirán cambios en su propuesta.</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <label class="control-label">Email de contacto</label>
                    </div>
                    <div class="col-md-11">
                        <h4><%: this.currentAck.Email %></h4>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-1">&nbsp;</div>
                    <div class="col-md-11">
                        <label class="control-label">Seleccione el área donde desea presentar su trabajo</label>
                    </div>
                    <div class="col-md-1">
                        <label class="col-md-4 control-label">Área</label>
                    </div>
                    <div class="col-md-11">
                        <asp:DropDownList runat="server" ID="Areas" CssClass="dropdown form-control" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <label class="col-md-4 control-label">Título</label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="Titulo" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-1">&nbsp;</div>
                    <div class="col-md-11">
                        <label class="control-label">Ejemplo de título: 'Microencapsulación de <i>Lactobacillus casei</i> en leche descremada por secado spray.'</label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <label class="col-md-4 control-label">Cuerpo de resumen</label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="Trabajo" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-1">&nbsp;</div>
                    <div class="col-md-11">
                        <p>Ante cualquier duda sobre la carga de resúmenes, por favor comunicarse con Gabriel Vinderola (AAM Filial Santa Fe, Email <strong>gvinde@hotmail.com</strong>) ó Fabián Zalazar (Colegio de Bioquímicos de Santa Fe, Email <strong>fzalazar@fbcb.unl.edu.ar</strong> ).</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row well">
            <p>Puede guardar su trabajo por seguridad o para continuarlo en otro momento. Si guarda su trabajo y decide retirarse de la computadora, podrá volver a ingresar a este área a través del link <i>'Presentación de Trabajos'</i> en el menú superior, y retomarlo desde donde lo dejó.</p>
            <p>Si decide <i>'Finalizar la Propuesta'</i> con el siguiente botón, ésta será enviada a revisión y usted no podrá continuar modificándola.</p>
            <asp:Button runat="server" CssClass="btn btn-success" Text="Guardar Progreso" OnClick="GuardarProgreso" OnClientClick="setHiddenValues()" />

            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Previsualizar trabajo
            </button>
            <asp:Button ID="btnFinalizarPropuesta" runat="server" CssClass="btn btn-warning pull-right" Text="Finalizar Propuesta" OnClick="FinalizarPropuesta" />
        </div>
    </div>

    <div runat="server" id="Mensaje">
        <div class="jumbotron" runat="server">
            <div class="container">
                <div class="bg-danger" runat="server" id="div1">
                    <h2 runat="server" id="MensajeTitulo">Su trabajo se encuentra en estado '<i><%: ViewState["Estado"] %></i>'.
                        <br />
                        En este momento no puede editarlo.</h2>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade printable" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Previsualización de trabajo</h4>
                </div>
                <div class="modal-body">
                    <%= this.currentWork.Title %>
                    <h3>Area: <%: this.currentWorkArea != null ? this.currentWorkArea.Id.ToString() : "" %> - <%: this.currentWorkArea != null ? this.currentWorkArea.Nombre : "" %></h3>
                    <h4>Email de contacto: <%: this.currentAck.Email %></h4>
                    <% if (this.currentWork.Authors.Any())
                       { %>

                    <p>
                        <ul class="list-group">
                            <li class="list-group-item">
                                <%= String.Join(", ", currentWork.Authors.OrderBy(x => x.OrderPosition).Select(x => string.Format("{0}<sup>{1}</sup>",x.Nombre,x.Establishment.Number))) %>.
                            </li>
                        </ul>
                    </p>

                    <% } %>
                    <% if (this.currentWork.Establishments.Any())
                       { %>
                    <p>
                        <ul class="list-group">
                            <li class="list-group-item">
                                <%= String.Join("<br/> ", currentWork.Establishments.OrderBy(x => x.Number).Select(x =>string.Format("<sup>{0}</sup>{1}", x.Number,x.Nombre))) %>
                                
                            </li>
                        </ul>
                    </p>
                    <% } %>

                    <p>
                        <%= this.currentWork.Body %>
                    </p>


                </div>
                <div class="modal-footer">
                    <a href="VerTrabajo.aspx?WorkID=<%: currentWork.Id %>" target="_blank" class="btn btn-info">Imprimir</a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Continuar editando</button>
                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        $(document).ready(function () {
            setTimeout();
        });

        function agregarEstablecimiento() {
            $.ajax({
                type: "POST",
                url: "IO.aspx/AgregarEstablecimiento",
                data: JSON.stringify({
                    Nombre: $("#<%: NuevoEstablecimientoNombre.ClientID %>").val(),
                    WorkID: <%: currentWork.Id %>
                    }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.reload(true);
                }
            });
        }
        
        function agregarAutor() {
            $.ajax({
                type: "POST",
                url: "IO.aspx/AgregarAutor",
                data: JSON.stringify({
                    Nombre: $("#<%: NuevoAutorNombre.ClientID %>").val(),
                    WorkID: <%: currentWork.Id %>,
                    EstablecimientoText: $("#<%: ddlSeleccioneEstablecimiento.ClientID %>").text(),
                    EstablecimientoID: $("#<%: ddlSeleccioneEstablecimiento.ClientID %>").val()
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.reload(true);
                }
            });
        }

        function setPresenter(autorID, workID) {
            $.ajax({
                type: "POST",
                url: "IO.aspx/SetPresenter",
                data: JSON.stringify({
                    AutorID: autorID,
                    WorkID: workID
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    window.location.reload(true);
                }
            });
        }

        function subirOrden(autorID, workID) {
            $.ajax({
                type: "POST",
                url: "IO.aspx/SubirOrden",
                data: JSON.stringify({
                    AutorID: autorID,
                    WorkID: workID
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.reload(true);
                }
            });
        }

        function bajarOrden(autorID, workID) {
            $.ajax({
                type: "POST",
                url: "IO.aspx/BajarOrden",
                data: JSON.stringify({
                    AutorID: autorID,
                    WorkID: workID
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.reload(true);
                }
            });
        }
        function deleteEstablishment(id) {
            $.ajax({
                type: "POST",
                url: "IO.aspx/DeleteEstablishment",
                data: JSON.stringify({
                    Id: id
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.reload(true);
                }
            });
        }

        function deleteAuthor(id) {
            $.ajax({
                type: "POST",
                url: "IO.aspx/DeleteAuthorAsync",
                data: JSON.stringify({
                    Id: id
                }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                }
            });
        }

        setTimeout(function () {
            $('#MainContent_Titulo_ifr').height(100);

        }, 2000);

        function setHiddenValues() {
            $("#MainContent_hiddenTitulo").val(tinyMCE.get('MainContent_Titulo').getContent());
            $("#MainContent_hiddenTrabajo").val(tinyMCE.get('MainContent_Trabajo').getContent());
        }
    </script>
</asp:Content>
