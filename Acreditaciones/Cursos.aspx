<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Acreditaciones.Cursos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <%--    <div class="row well">
        <h1>Tópicos de Virología Clínica</h1>
        <ul>
            <li><strong>"Mecanismo de carcinogénesis asociado a infecciones por el Virus del Papiloma Humano”. Dra. Ana Cavatorta.</strong>  Instituto de Biología Celular y Molecular de Rosario (IBR-CONICET) (Rosario).</li>
            <li><strong>"Aplicación de métodos moleculares de detección del Virus Papiloma Humano para la prevención secundaria del cáncer cervical”. Dr. Daniel Chouhy</strong>, Instituto de Biología Celular y Molecular de Rosario (IBR-CONICET) (Rosario).</li>
            <li><strong>"Hepatitis Virales de la A a la E. Aportes del laboratorio Bioquímico al Diagnóstico y Tratamiento”.  Dr. Jorge Rey</strong>. Departamento de Hemoterapia e Inmunohematología, Hospital de Clínicas "José de San Martín” (Ciudad Autónoma de Buenos Aires).</li>
            <li><strong>Dr. Alfredo Martinez</strong>, Unidad de Virología (UNVIR), CEMIC (Ciudad Autonomía de Buenos Aires). </li>
        </ul>
        <h1>Marcadores Tumorales</h1>
        <ul>
            <li><strong>"Marcadores Tumorales Proteicos Séricos”. Dr. Sergio Nosetto.</strong> Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires).</li>
            <li><strong>"Marcadores Moleculares en Tumores Sólidos”. Dr. Maximiliano Zeballos</strong>, Laboratorio de Hematología, Oncología y Genética, Hospital Privado de Córdoba. (Córdoba). </li>
        </ul>
    </div>--%>

    <div class="row well">
        <h2>Cursos</h2>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal1">Tópicos de Virología Clínica</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal2">Marcadores tumorales</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal3">Optimización de las pruebas de sensibilidad en infecciones ambulatorias: que antibióticos ensayar, que y como buscar, como interpretar y como informar al médico</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal4">Introducción a microbiota intestinal y microorganismos probióticos</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal5">Taller de identificación de hongos de importancia en alimentos</a></li>
        </ul>

    </div>


    <!-- Modals -->
    <div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Tópicos de Virología Clínica</h4>
                </div>
                <div class="modal-body">
                    <ul>
                        <li><strong>"Mecanismo de carcinogénesis asociado a infecciones por el Virus del Papiloma Humano”. Dra. Ana Cavatorta.</strong>  Instituto de Biología Celular y Molecular de Rosario (IBR-CONICET) (Rosario).</li>
                        <li><strong>"Aplicación de métodos moleculares de detección del Virus Papiloma Humano para la prevención secundaria del cáncer cervical”. Dr. Daniel Chouhy</strong>, Instituto de Biología Celular y Molecular de Rosario (IBR-CONICET) (Rosario).</li>
                        <li><strong>"Hepatitis Virales de la A a la E. Aportes del laboratorio Bioquímico al Diagnóstico y Tratamiento”.  Dr. Jorge Rey</strong>. Departamento de Hemoterapia e Inmunohematología, Hospital de Clínicas "José de San Martín” (Ciudad Autónoma de Buenos Aires).</li>
                        <li><strong>Dr. Alfredo Martinez</strong>, Unidad de Virología (UNVIR), CEMIC (Ciudad Autonomía de Buenos Aires). </li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Marcadores tumorales</h4>
                </div>
                <div class="modal-body">
                    <ul>
                        <li><strong>"Marcadores Tumorales Proteicos Séricos”. Dr. Sergio Nosetto.</strong> Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires).</li>
                        <li><strong>"Marcadores Moleculares en Tumores Sólidos”. Dr. Maximiliano Zeballos</strong>, Laboratorio de Hematología, Oncología y Genética, Hospital Privado de Córdoba. (Córdoba). </li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Optimización de las pruebas de sensibilidad en infecciones ambulatorias: que antibióticos ensayar, que y como buscar, como interpretar y como informar al médico</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Introducción a microbiota intestinal y microorganismos probióticos</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Taller de identificación de hongos de importancia en alimentos</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
