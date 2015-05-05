<%@ Page Title="III Congreso de Bioquímicos del Litoral - Acreditaciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JornadasArgentinasDeMicrobiologia.aspx.cs" Inherits="Acreditaciones.JornadasArgentinasDeMicrobiologia" %>


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
                    <p class="titulo0" style="font-family: Arial, Helvetica, sans-serif; font-size: 16px; color: rgb(74, 82, 156); font-weight: bold; font-variant: inherit;">
                        XVI JORNADAS ARGENTINAS DE MICROBIOLOGÍA
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo1" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;">PROGRAMA CIENTÍFICO<br />
                            Conferencias semiplenarias<span class="Apple-converted-space">&nbsp;</span></span><br />
                        <span class="texto2" style="font-family: Arial, Helvetica, sans-serif; color: rgb(85, 93, 96);">
                            <br />
                        </span><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: rgb(85, 93, 96);"><span class="texto2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">&quot;Epidemiología de enfermedades fúngicas en cultivos de soja y maíz que causan pérdidas económicas&quot;,<br />
                            Margarita Sillón, Departamento de Producción Vegetal, Facultad de Ciencias Agrarias, Universidad Nacional del Litoral y Centro Privado de Sanidad de Cultivos, Esperanza, Santa Fe.<br />
                            <br />
                            &quot;Nutritional modulation of gut microbiota by probiotics: how to target obesity and metabolic syndrome?&quot;<br />
                            Corinne Grangette, Laboratory for Lactic Acid Bacteria and Mucosal Immunity, Center for Infection and Immunity Lille, Institute Pasteur, Lille, France.</span></span>
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo1" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(231, 27, 78); font-weight: bold;"><span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Mesas Redondas:</span></span>
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Contribución de la biologí­a molecular y los conceptos PK/PD al diagnóstico y manejo de las enfermedades infecciosas.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinador: Marcelo Galas, Departamento de Bacteriologí­a, Instituto Nacional de Enfermedades Infecciosas, ANLIS “Dr. C. Malbrán”, Ciudad Autónoma de Buenos Aires.<br />
                        <br />
                        <strong>“Bacilos gram negativos: el aporte de los métodos moleculares al reconocimiento de BLEE y carbapenemasas de relevancia clínica“</strong>, José Di Conza, Laboratorio de Resistencia Bacteriana, Facultad de Farmacia y Bioquímica, Universidad de Buenos Aires - CONICET, Buenos Aires y Cátedra de Microbiologí­a General, Facultad de Bioquí­mica y Ciencias Biológicas, Universidad Nacional del Litoral, Santa Fe.<br />
                        <br />
                        “<strong>Resistencia a los antifúngicos: prevalencia, mecanismos y consecuencias terapéuticas del diagnóstico molecular“</strong>, Guillermo García Effrón, Laboratorio de Micologí­a y Diagnóstico Molecular, Facultad de Bioquímica y Ciencias Biológicas, Universidad Nacional del Litoral-CONICET, Santa Fe.<br />
                        <br />
                        <strong>“Farmacocinética y farmacodinamia: conceptos útiles para aplicar en el diagnóstico y tratamiento antimicrobiano“</strong>, Marcelo Galas, Departamento de Bacteriología, Instituto Nacional de Enfermedades Infecciosas, ANLIS “Dr. C. Malbrán”, Ciudad Autónoma de Buenos Aires.<br />
                        <br />
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Infecciones asociadas a prótesis osteoarticulares y cirugía cardiovascular.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinadora: Marina Bottiglieri, Clínica Universitaria Reina Fabiola, Córdoba.<br />
                        <br />
                        <strong>“Aspectos clínicos“</strong>, Graciana Morera, Sección Infectología, Servicio de Clínica Médica, Hospital Dr. José María Cullen, Santa Fe.<br />
                        <br />
                        <strong>“Enfoque epidemiológico y control“</strong>, Silvia Acosta-Gnass, Riverside County Regional Medical Center, Riverside, California, USA.<br />
                        <br />
                        <strong>“Diagnóstico microbiológico“</strong>, Marina Bottiglieri, Clínica Universitaria Reina Fabiola, Córdoba.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Últimas novedades en bacterias de importancia clínica.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinadora: Emma Sutich, Cátedra de Bacteriología, Departamento de Microbiología, Facultad de Ciencias Bioquímicas y Farmacéuticas, Universidad Nacional de Rosario, Rosario.<br />
                        <br />
                        <strong>¿Qué hay de nuevo con los estreptococos?</strong>, Horacio Lopardo, Cátedra de Microbiologí­a Clínica, Facultad de Ciencias Exactas, Universidad Nacional de La Plata, La Plata.<br />
                        <br />
                        <strong>¿Hay novedades en <em>Staphylococcus aureus</em> y estafilococos coagulasa negativa?</strong>, Angela Famiglietti, Departamento de Bioquí­mica Clínica, Hospital de Clí­nicas, Facultad de Farmacia y Bioquí­mica, Universidad de Buenos Aires, Ciudad Autónoma de Buenos Aires.<br />
                        <br />
                        <strong>“Bacilos no fermentadores emergentes“</strong>, Carlos Vay, Laboratorio de Bacteriologí­a, Hospital de Clí­nicas, Facultad de Farmacia y Bioquí­mica, Universidad de Buenos Aires, Ciudad Autónoma de Buenos Aires.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Infecciones emergentes y re-emergentes en un mundo globalizado.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinadora: Elsa Zerbini, Instituto Nacional de Enfermedades Respiratorias “Dr. Emilio Coni”, ANLIS “Dr. Carlos Malbrán”, Santa Fe.<br />
                        <br />
                        <strong>“Ebola y Chikungunya: nuevas amenazas“</strong>, Marí­a Carolina Cudós, Instituto Nacional de Enfermedades Respiratorias “Dr. Emilio Coni”, ANLIS “Dr. Carlos Malbrán”, Santa Fe.<br />
                        <br />
                        <strong>“Tuberculosis multirresistente y extremadamente resistente: detectarlas tempranamente“</strong>, María Susana Imaz, Instituto Nacional de Enfermedades Respiratorias “Dr. Emilio Coni”, ANLIS “Dr. Carlos Malbrán”, Santa Fe.<br />
                        <br />
                        <strong>”Paracoccidiodomicosis: ¿especies nuevas para la región?”</strong>, Gustavo Giusiano, Departamento de Micologí­a, Instituto de Medicina Regional, Universidad Nacional del Nordeste, Resistencia, Chaco.<br />
                        <br />
                        <strong>“Leishmaniasis en Argentina”</strong>, Oscar Daniel Salomón, Instituto Nacional de Medicina Tropical, Ministerio de Salud, Puerto Iguazú, Misiones.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Microorganismos contaminantes y deteriorantes de alimentos.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinador: Juan Carlos Basílico, Cátedra de Microbiologí­a, Facultad Ingeniería Química, Universidad Nacional del Litoral, Santa Fe.<br />
                        <br />
                        <strong>“Microorganismos de deterioro en jugos de fruta y derivados. El nuevo desafío de la industria”</strong>, Juan Martin Oteiza, Laboratorio de Microbiologí­a de los Alimentos, Centro de Investigación y Asistencia Técnica a la Industria (CIATI), Centenario, Neuquén.<br />
                        <br />
                        <strong>&quot;Aspectos de deterioro microbiológico en productos pesqueros&quot;</strong>, María Isabel Yeannes, Grupo de Investigación Preservación y Calidad de Alimentos (GIPCAL), Facultad de Ingenierí­a, Universidad Nacional de Mar del Plata y CONICET CCT-Mar del Plata, Mar del Plata.<br />
                        <br />
                        <strong>“Estrategias para reducir la entrada de micotoxinas en la cadena alimentaria”</strong>, Adriana Torres, Departamento de Microbiología e Inmunología, Facultad de Ciencias Exactas, Fco-Qcas y Naturales, Universidad Nacional de Rio Cuarto, Córdoba.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Microorganismos de importancia tecnológica y en salud.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinador: Jorge Reinheimer,Instituto de Lactología Industrial, Facultad de Ingeniería Química, Universidad Nacional del Litoral-CONICET, Santa Fe.<br />
                        <br />
                        <strong>&quot;Alimentos fermentados andinos como fuente de bacterias lácticas productoras de nutraceúticos&quot;</strong>, Graciela Vignolo, Centro de Referencia para Lactobacilos (CERELA-CONICET), San Miguel de Tucumán.<br />
                        <br />
                        <strong>“Bacterias gram (+) con propiedades probióticas para la abeja melífera. Hacia una apicultura más natural”</strong>, Carina Audisio, Instituto de Investigaciones para la Industria Química (INIQUI-CONICET, Universidad Nacional de Salta, Salta.<br />
                        <br />
                        <strong>“Funcionalidad de bifidobacterias aisladas de leche materna para su empleo como probióticos”</strong>, Patricia Burns, Instituto de Lactologí­a Industrial, Facultad de Ingeniería Química, Universidad Nacional del Litoral-CONICET, Santa Fe.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Gestión de la ecologí­a microbiana en las cadenas agroalimentarias para garantizar inocuidad.<span class="Apple-converted-space">&nbsp;</span></span><br />
                        Coordinador: Laureano Frizzo, Departamento de Salud Pública, Facultad de Ciencias Veterinarias, Universidad Nacional del Litoral, Esperanza, Santa Fe.<br />
                        <br />
                        <strong>“Prevalencia y difusión de <i>Campylobacter</i> termofí­licos en la cadena cárnica aviar”</strong>, María Virginia Zbrun, Laboratorio de Anállisis de Alimentos, Instituto de Ciencias Veterinarias del Litoral, CONICET-UNL y Departamento de Salud Pública, Facultad de Ciencias Veterinarias, Universidad Nacional del Litoral, Esperanza, Santa Fe.<br />
                        <br />
                        <strong>“Prevalencia y difusión de <i>Salmonella</i> spp. en la cadena cánica porcina”</strong>, Juan Pablo Vico, CONICET-Unidad Asociada: Área de Cs. Agrarias, Ingeniería, Cs. Biológicas y de la Salud, Córdoba.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <strong>“Prevalencia y difusión de VTEC en la cadena cárnica bovina”</strong>, Gerardo Aníbal Leotta, Instituto de Genética Veterinaria &quot;Ing. Fernando Noel Dulout&quot;, CCT La Plata CONICET-Universidad Nacional de La Plata, La Plata.
                    </p>
                    <p class="texto1" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(85, 93, 96);">
                        <span class="titulo2" style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(231, 27, 78); font-weight: bold;">Microorganismos de interés ambiental para la biorremediación y la caracterización de ambientes poco explorados.</span><br />
                        Coordinador: Gabriel Vinderola, Instituto de Lactologí­a Industrial, Facultad de Ingeniería Quó­mica, Universidad Nacional del Litoral-CONICET, Santa Fe.<br />
                        <br />
                        <strong>“Extremófilos de la Puna y evolución de la vida en la tierra”</strong>, María Eugenia Farias, Laboratorio de Investigaciones Microbiológicas de Lagunas Andinas, PROIMI-CONICET, San Miguel de Tucumán.<br />
                        <br />
                        <strong>“Biominería: una alternativa menos contaminante”</strong>, Edgardo Donati, Centro de Investigación y Desarrollo en Fermentaciones Industriales, CINDEFI-CONICET y Facultad de Ciencias Exactas, Universidad Nacional de La Plata, La Plata.<br />
                        <br />
                        <strong>“Estudio de la ecología microbiana de ambientes degradativos de lactosuero mediante metagenómica”</strong>, Ariel Amadio, instituto Nacional de Tecnología Agropecuaria (INTA)-EEA Rafaela, Santa Fe.
                    </p>
                </td>
            </tr>

        </table>
        <br />
        <hr />
        <div class="pull-right">
            <p><a runat="server" href="~/Acreditar" class="btn btn-primary btn-lg">Acreditación &raquo;</a></p>
        </div>
    </div>

</asp:Content>
