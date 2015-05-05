<%@ Page Title="III Congreso de Bioquímicos del Litoral - Acreditaciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IIICongresoBioquimicoDelLitoral.aspx.cs" Inherits="Acreditaciones.IIICongresoBioquimicoDelLitoral" %>


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
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" width="960">
            <tr>
                <td>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo0" style="font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: rgb(74, 82, 156); font-weight: bold; font-variant: inherit;">III CONGRESO BIOQUÍMICO DEL LITORAL</span>
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo1" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;">Programa Preliminar<br />
                            CURSOS PRE-CONGRESO</span>
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Tópicos de Virologí­a Clínica</span><br />
                        Dra. Ana Laura Cavatorta Area Virología-IBR/CONICET Departamento Microbiología Facultad Cs. Bioquímicas y Farmacéuticas  Universidad Nacional de Rosario<br />
                        Dr. Daniel Chouhy, Instituto de Biologí­a Celular y Molecular de Rosario (IBR-CONICET) (Rosario)<br />
                        Dr. Jorge Rey. Departamento de Hemoterapia e Inmunohematologí­a, Hospital de Clínicas &quot;José de San Martín&quot; (Ciudad Autónoma de Buenos Aires)<br />
                        Dr. Alfredo Martínez, Unidad de Virologí­a (UNVIR), CEMIC (Ciudad Autónoma de Buenos Aires).
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Marcadores Tumorales.</span><br />
                        Dr. Sergio Nosetto. Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires).<br />
                        Dr. Maximiliano Zeballos, Laboratorio de Hematología, Oncologí­a y Genética, Hospital Privado de Córdoba
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo1" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;">Mesas Redondas</span><br />
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">MR1: Reproducción Humana.</span><br />
                        Dra. Rosa Molina. Laboratorio de Andrología y Reproducción (Córdoba)<br />
                        Dra. María José Munuce. Departamento de Reproducción Humana y Biología de la Reproducción, Sanatorio Británico (Rosario)<br />
                        Dra. Fernanda Raffo. Centro Medico Fertilab (Ciudad Autónoma de Buenos Aires).
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">MR 2: Enfoques del Laboratorio de Hemostasia y Trombosis</span><br />
                        Dra. Mirta Hepner, Laboratorio de Hemostasia y Trombosis, Servicio de Hematología y Oncología, Hospital de Pediatrí­a S.A.M.I.C. &quot;Prof. Dr. Juan P. Garrahan&quot;. (Ciudad Autónoma de Buenos Aires).<br />
                        Dra. Adriana Sarto. Departamento de Hematología de la Reproducción, Halitus Instituto Médico, (Ciudad Autónoma de Buenos Aires).
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">MR3: Autoinmunidad-Enfermedad Celiaca</span><br />
                        Dra. Patricia Gentilli. Laboratorio de Inmunología, Instituto de Análisis &quot;Fares Taie&quot;, Mar del Plata.<br />
                        Dra. María­ Esther Lasta. Laboratorio Central, Hospital Interzonal General Materno Infantil (Mar del Plata)<br />
                        Dra. Marcela Demarchi, Servicio de Bioquímica, Hospital Córdoba (Córdoba)
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">MR 4: Seguridad del Paciente</span><br />
                        Dra. Silvia Quiroga. Departamento de Análisis Clínicos, CEMIC (Ciudad Autónoma de Buenos Aires).<br />
                        Dra. María Torres, Departamento de Análisis Clínicos, CEMIC (Ciudad Autónoma de Buenos Aires).<br />
                        Dr. Matías Milberg. Departamento de Medicina Interna, CEMIC (Ciudad Autónoma de Buenos Aires).
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">MR5: Bioquímica Forense</span><br />
                        Dr. Gustavo Martínez. Servicio de Genética Forense, Superior Tribunal de Justicia (Entre Ríos)<br />
                        Dr. Daniel Corach. Servicio de Huellas Digitales Genétocas “ Facultad de Farmacia y Bioquímica&quot;&nbsp; UBA (Ciudad Autónoma de Buenos Aires).<br />
                        Dr. Luis Ferrari. Laboratorio de Toxicolo­gía y Química Legal, Asesoría Pericial, SCJ Provincia de Buenos Aires (La Plata)
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo1" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;">Conferencias Semiplenarias</span><br />
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;"><strong>Conferencia 1:</strong><span class="Apple-converted-space">&nbsp;</span>Bioquí­mica 2.0. (Medicina de Laboratorio Basada en la<br />
                            Evidencia).</span><br />
                        Dr. Hernán Fares Taie, Instituto de Análisis &quot;Fares Taie&quot; Mar del Plata.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Conferencia 2: Enfermedad Hemolítica Fetoneonatal.</span><br />
                        Dr. Carlos Cotorruelo. Facultad de Ciencias Bioquí­micas y Farmacéuticas, Universidad Nacional de Rosario (Rosario)
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Conferencia 3: Consideraciones prácticas en la evaluación bioquí­mica de la función tiroidea.</span><br />
                        Dr. Gustavo Macallini. Laboratorio de Pesquisa, Hospital Durand/Laboratorio Hidalgo (Ciudad Autónoma de Buenos Aires)
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Conferencia 4: Leucemia Mieloide Clínica: Estrategia de análisis en un modelo de terapias dirigidas.</span><br />
                        Dra. Irene Larripa. Laboratorio de Genética Hematológica Instituto de Medicina Experimental (IMEX) “ CONICET “ Academia Nacional de Medicina (Ciudad Autónoma de Buenos Aires)
                    </p>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
        <br />
        <hr />
        <div class="pull-right">
            <p><a runat="server" href="~/Acreditar" class="btn btn-primary btn-lg">Acreditación &raquo;</a></p>
        </div>
    </div>

</asp:Content>
