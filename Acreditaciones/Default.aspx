<%@ Page Title="III Congreso de Bioquímicos del Litoral - Acreditaciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Acreditaciones._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="jumbotron">
        <%--<h1>Bienvenido - Welcome</h1>--%>

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="<%: Page.ResolveUrl("~/Content/Imagenes/Slider/A.png") %>" alt="...">
                    <div class="carousel-caption">
                        &nbsp;
                    </div>
                </div>
                <div class="item">
                    <img src="<%: Page.ResolveUrl("~/Content/Imagenes/Slider/B.png") %>" alt="...">
                    <div class="carousel-caption">
                        &nbsp;
                    </div>
                </div>
                <div class="item">
                    <img src="<%: Page.ResolveUrl("~/Content/Imagenes/Slider/C.png") %>" alt="...">
                    <div class="carousel-caption">
                        &nbsp;
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
    <div class="row well">
        <h2>Se encuentra habilitada la carga <i>on line</i> de resúmenes (ir a Presentación de trabajos / envío de resúmenes). <strong style="color: red;">Fecha límite: 17 de Mayo.</strong>
            <br/>
            <strong style="color: green">Próximamente se habilitará el sistema para cargar un segundo trabajo por inscripto.</strong>
        </h2>
    </div>
    <div class="row well">
        <h2><a target="_blank" href="/Content/Declaracion Gobierno Provincial.pdf">Declaración de Interés Provincial</a></h2>
    </div>
    <div class="row well">
        <h1>Bienvenidos,</h1>
        <p>
            El Colegio de Bioquímicos de Santa Fe-Primera Circunscripción y la Filial Santa Fe de la Asociación Argentina de Microbiología los recibe con una cálida bienvenida al III Congreso Bioquímico del Litoral y XVI Jornadas Argentinas de Microbiología, encuentro científico que se llevará a cabo del 5 al 7 de Agosto de 2015 en la ciudad de Santa Fe.Es un gran desafío para nuestras instituciones realizar este evento científico y a su vez, un privilegio dado el alto nivel de profesionales con el que contaremos en el desarrollo del programa. El objetivo es enriquecer las temáticas contempladas por este acontecimiento científico y difundir la actividad de profesionales de la región y el país, dedicados a las diferentes ramas de la Bioquímica y la Microbiología.Queremos expresar, desde ya, nuestro agradecimiento a los que se registrarán y esperamos honrar vuestra confianza. Invitamos a todos los colegas del país a participar de este encuentro para que nuestro objetivo se haga realidad. 
        </p>

        <div class="row roundCorners" style="background-color: white">
            <br />
            <div class="col-md-6">
                <center>
                    <img src="Content/Presidentes/Foto%20Mayoral.jpg" style="width: 200px"/>
                    <br/>
                    <img src="Content/Presidentes/Firma%20Mayoral.png" />
                </center>
            </div>
            <div class="col-md-6">
                <center>
                    <img src="Content/Presidentes/Foto%20Pingsdorf.jpg" style="width: 200px"/>
                    <br/>
                    <img src="Content/Presidentes/Firma%20Pingsdorf.png" />
                </center>
            </div>
        </div>
    </div>

    <div class="row well">
        <div class="col-md-6">
            <table align="center" border="0" cellpadding="0" cellspacing="0" style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" width="960">
                <tr>
                    <td class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <p>
                            <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;">Autoridades III Congreso Bioquímico del Litoral</span><br />
                            <strong>Presidente:</strong></span><span>&nbsp;</span>Eduardo Pingsdorf<br />
                            <br />
                            <strong>Vicepresidente</strong>: Roberto Gebhart<br />
                            <br />
                            <strong>Secretario General</strong>: Javier Lottersberger<br />
                            <br />
                            <strong>Dirección Ejecutiva:</strong><br />
                            Presidente: Sergio González<br />
                            Vice Presidente: Carolina Rey<br />
                            Secretaría: Alicia Rinaldi
                        </p>
                        <p>
                            <strong>Comité Científico<br />
                                Miembros</strong>:<br />
                            Andrés Albrecht<br />
                            María Belén Chemez<br />
                            Melania Noroña<br />
                            Guillermo Ramos<br />
                            Fabián Schurmann<br />
                            Carolina Veaute<br />
                            Fabián Zalazar<br />
                            <br />
                            <strong>Comité Organizador<br />
                                Miembros:</strong><br />
                            Viviana Azogaray<br />
                            Liliana Gavilan<br />
                            Carolina Kranewitter<br />
                            Rodolfo Maiarota<br />
                            Milagros Malatini<br />
                            Alicia Milne<br />
                            Liliana Perig<br />
                            Liliana Ulmari</span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-6">
            <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; color: rgb(231, 27, 78); font-weight: bold;"><span style="font-size: 14px">Comisión Organizadora XVI Jornadas Argentinas de Microbiología</span></span><br />
            <p>
                <span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);"><strong>Presidente</strong>: Clara Mayoral<br />
                    <strong>Vice-Presidente 1era</strong>: Emilce Méndez<br />
                    <strong>Vice- Presidente 2do</strong>: Gustavo Giusiano<br />
                    <strong>Secretaria General</strong>: María Rosa Baroni<br />
                    <strong>Secretaria de Actas</strong>: Marina Rico<br />
                    <strong>Secretario del Área Científica</strong>: Gabriel Vinderola<br />
                    <br />
                    <strong>Colaboradores del Área Científica:<span class="Apple-converted-space">&nbsp;</span></strong><br />
                    Jorge Reinheimer<br />
                    Emma Sutich<br />
                    Gustavo Giusiano<br />
                    Juan Carlos Basílico<br />
                    Patricia Burns<br />
                    María Cristina Lurá<br />
                    Graciela Posse<br />
                    Guillermo García-Effron<br />
                    Laureano Frizzo<br />
                    Marta Rocchi
                    <br />
                    <br />
                    <strong>Secretaria del Área de Finanzas</strong>: Alicia Nagel<br />
                    <br />
                    Colaboradores del Área de Finanzas:<br />
                    Carolina Aro<br />
                    Claudia Alvarez<br />
                    Roxana Lorenz<br />
                    Marí­a Elena Nardin<br />
                    <br />
                    <strong>Secretaria del Área Técnica:</strong><span class="Apple-converted-space">&nbsp;</span>Guillermo García-Effrón<br />
                    <br />
                    <strong>Colaboradores del Área Técnica:</strong><br />
                    Francisco Salamone<br />
                    Susana Morano<br />
                    Hernando Carballada<br />
                    Hugo Petrosino<br />
                    <br />
                    <strong>Vocales:<span class="Apple-converted-space">&nbsp;</span></strong><br />
                    Carolina Aro<br />
                    Francisco Salamone<br />
                    Graciela Posse
                    
                    <br />
                    <br />
                    <strong>Comisión Directiva AAM Filial Santa Fe</strong>
                    <br />

                    Presidente: Emilce Méndez                       
                    <br />
                    Vice presidente: Graciela Posse                 
                    <br />
                    Secretario: Gabriel Vinderola                   
                    <br />
                    Pro-secretaria: Rosana Lorenz                   
                    <br />
                    Secretaria de actas: Marina Rico                
                    <br />
                    Tesorera: Carolina Aro                          
                    <br />
                    Pro-tesorera: Alicia Nagel                      
                    <br />
                    Vocal titular 1º: María Rosa Baroni             
                    <br />
                    Vocal titular 2º: María Elena Nardín            
                    <br />
                    Vocal titular 3º: Claudia Alvarez               
                    <br />
                    Vocal titular 4º: Francisco Salamone            
                    <br />
                    Vocal suplente 1º: Laureano Frizzo              
                    <br />
                    Vocal suplente 2º : Norberto Williner           
                    <br />
                    Vocal suplente 3º: Verónica Vera Garate         
                    <br />Vocal suplente 4º: María Cristina Lurá
            </p>
            &nbsp;</span>
        </div>
    </div>



    <%--<div class="row well">
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" width="960">
            <tr valign="top">
                <td>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(85, 93, 96);"><span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">CONFERENCIAS<br />
                            Plenaria inaugural:<span class="Apple-converted-space">&nbsp;</span></span></span><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; color: rgb(85, 93, 96);"><br />
                            </span><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(85, 93, 96);"><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">Nuevas fronteras en Microbiologí­a: el microbioma humano en la salud y la enfermedad<br />
                                <span class="bold">Disertante:</span><span class="Apple-converted-space">&nbsp;</span>Alicia Farinati, Cátedra de Microbiología y Parasitología, Facultad de Medicina, Universidad del Salvador, Ciudad Autónoma de Buenos Aires.</span></span>
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(85, 93, 96);"><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                            <br />
                        </span>
                            <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Plenaria de Clausura:<span class="Apple-converted-space">&nbsp;</span></span><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; color: rgb(85, 93, 96);"><br />
                            </span><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">Tí­tulo a confirmar....<br />
                                <strong>Disertante:</strong><span class="Apple-converted-space">&nbsp;</span>Gabriel Rabinovich, Laboratorio de Inmunopatología, Instituto de Biología y Medicina Experimental-CONICET y Facultad de Ciencias Exactas, Universidad de Buenos Aires, Ciudad Autónoma de Buenos Aires.</span><span class="Apple-converted-space">&nbsp;</span></span><br />
                    </p>
                </td>
            </tr>
        </table>
        <br />
        <hr />
        <div class="pull-right">
            <p><a runat="server" href="~/Acreditar" class="btn btn-primary btn-lg">Acreditación &raquo;</a></p>
        </div>
    </div>--%>
</asp:Content>
