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
            <li><a href="#" data-toggle="modal" data-target="#modal3">Optimización de las pruebas de sensibilidad de los agentes etiológicos de infecciones ambulatorias: ¿qué antibióticos ensayar?, ¿qué y cómo buscar?, ¿cómo interpretar e informar al médico?</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal4">Introducción a microbiota intestinal y microorganismos probióticos</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal5">Taller de reconocimiento de mohos contaminantes de alimentos y ambiente</a></li>
        </ul>
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#modal6">Actualización en el diagnóstico de Enfermedad de Chagas. Parasitología, Serología y Biología Molecular</a></li>
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
                    <p>
                        Modalidad: Teórico<br />
                        Fecha: Miércoles 5 de Agosto de 2015<br />
                        Lugar: Facultad de Ingeniería Química (Universidad Nacional del Litoral), Santiago del Estero 2829, (3er.piso),  Santa Fe.<br />
                        <strong>Costo de Inscripción: </strong>
                        - $ 150 para Inscriptos al III Congreso Bioquímico del Litoral y XVI Jornadas Argentinas de Microbiología.<br />
                        - $ 300 para NO inscriptos al III Congreso Bioquímico del Litoral y XVI Jornadas Argentinas de Microbiología.<br />
                        Cupo: máximo de 60 alumnos.<br />
                        Coordinador: Andrés ALBRECHT Email: aalbrecht@laboratoriomega.com.ar<br />

                        <hr />
                        <h2>Temario y Docentes:</h2>
                        <h4>“Mecanismo de carcinogénesis asociado a infecciones por el Virus del Papiloma Humano”. </h4>
                        <strong>Ana Laura Cavatorta.  Instituto de Biología Molecular y Celular de Rosario (IBR-CONICET) (Rosario). </strong>

                        <h4>“Aplicación de métodos moleculares de detección del Virus Papiloma Humano para la prevención secundaria del cáncer cervical”. </h4>
                        <strong>Diego Chouhy, Instituto de Biología Molecular y Celular de Rosario (IBR-CONICET) (Rosario). </strong>

                        <h4>“Hepatitis Virales de la A a la E. Aportes del laboratorio Bioquímico al Diagnóstico y Tratamiento”.  </h4>
                        <strong>Jorge Rey. Departamento de Hemoterapia e Inmunohematología, Hospital de Clínicas “José de San Martín” (Ciudad Autónoma de Buenos Aires). </strong>


                        <h4>“Virus Emergentes y Re-emergentes: diagnóstico de laboratorio/ HIV, CMV y EBV desde la clínica al laboratorio”. </h4>
                        <strong>Alfredo Martinez, Unidad de Virología (UNVIR), CEMIC (Ciudad Autonomía de Buenos Aires).</strong>


                        <h2>Cronograma del Curso</h2>
                        08:00- 09:00. Acreditaciones (Responsables.: Bioq. Liliana Ulmari- Bioq. Liliana Perig)<br />
                        <strong>Modulo I.</strong><br />
                        09.00 hs – 10.30 hs.  "Hepatitis Virales de la A a la E. Aportes del laboratorio Bioquímico al Diagnóstico y Tratamiento”. Jorge Rey. Departamento de Hemoterapia e Inmunohematología, Hospital de Clínicas "José de San Martín” (Ciudad Autónoma de Buenos Aires).<br />

                        10.30 – 11.00 hs  Intervalo<br />

                        <strong>Modulo II.</strong>
                        11:00 hs – 12:00 hs. "Virus Emergentes y Re-emergentes: diagnóstico de laboratorio”.  Alfredo Martinez. Unidad de Virología (UNVIR), CEMIC (Ciudad Autónoma de Buenos Aires).<br />
                        12.00 hs – 13.00 hs. "HIV, CMV y EBV desde la clínica al laboratorio”. Alfredo Martinez. Unidad de Virología (UNVIR), CEMIC (Ciudad Autónoma de Buenos Aires).<br />

                        13.00 hs – 14.00 hs   Almuerzo Libre<br />

                        <strong>Modulo III.</strong>
                        14:00 – 14:45 hs. “Mecanismo de carcinogénesis asociado a infecciones por el Virus del Papiloma Humano”. Ana Laura Cavatorta. Instituto de Biología Molecular y Celular de Rosario (IBR-CONICET) (Rosario).<br />

                        14:45 – 15:30 hs. “Aplicación de métodos moleculares de detección del Virus Papiloma Humano para la prevención secundaria del cáncer cervical”. Diego Chouhy. Instituto de Biología Molecular y Celular de Rosario (IBR-CONICET) (Rosario).<br />
                        15:30-16:00 hs: Cierre y Entrega de Certificados.
                        <br />


                        <h4>Inscripcion: comunicarse con Colegio de Bioquímicos de Santa Fe</h4>
                        Irigoyen Freyre 2940 - Santa Fe<br />
                        Tel/Fax: +54 (342) 4534144 / 4120203<br />
                        Email: cobiolit@gmail.com<br />
                        <a href="http://www.cobisfe1.org.ar/" target="_blank">http://www.cobisfe1.org.ar/</a>

                    </p>
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
                    <p>
                        Modalidad: Teórico<br />
                        Fecha: Miércoles 5 de Agosto de 2015<br />
                        Lugar: Facultad de Ingeniería Química (Universidad Nacional del Litoral), Santiago del Estero 2829, (Aula 15, 3er.piso),  Santa Fe.<br />
                        <strong>Costo de Inscripción: </strong>
                        - $ 150 para Inscriptos al III Congreso Bioquímico del Litoral y XVI Jornadas Argentinas de Microbiología.<br />
                        - $ 300 para NO inscriptos al III Congreso Bioquímico del Litoral y XVI Jornadas Argentinas de Microbiología<br />
                        Cupo: máximo de 60 alumnos<br />
                        Coordinador: Fabián ZALAZAR Email: fzalazar@fbcb.unl.edu.ar<br />

                        <hr />
                        <h2>Temario y Docentes:</h2>
                        <h4>“Marcadores Tumorales Proteicos Séricos”. </h4>
                        <strong>Sergio Nosetto. Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires).  </strong>
                        <br />
                        <strong>“Marcadores Moleculares en Tumores Sólidos y Predisposición Heredada al cáncer”. </strong>
                        <br />
                        <strong>Maximiliano Zeballos, Laboratorio de Hematología, Oncología y Genética, Hospital Privado de Córdoba. (Cordoba)</strong><br />

                        <h2>Cronograma del Curso</h2>
                        08:00- 09:00. Acreditaciones (Responsables.: Bioq. Liliana Ulmari- Bioq. Liliana Perig)<br />

                        <strong>Modulo I. “Marcadores Tumorales Proteicos Séricos”. Sergio Nosetto. Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires).  </strong>
                        <br />
                        09:00 hs – 09:45h  Introducción a los marcadores oncológicos. Conceptos a tener en cuenta para los Marcadores en general. Conceptos de Sensibilidad, Especificidad, Cinética del Marcador. Elección del Marcador. Aspectos Clínicos de los Marcadores (screening – Diagnostico – Monitoreo del tratamiento). Aspectos Dinámicos.<br />
                        09:45 – 10.30h    Tumores y su Marcador mas vinculado. Conceptos sencillos sobre cada tumor y el Marcador mejor asociado. Tumores del Tracto Gastrointestinal, Tumor de Mama, Tumor de Ovario y Tumor de Testículo.<br />
                        10:30 – 11:00h  Intervalo<br />
                        11:00 hs – 12:00h   Tumores y su Marcador más vinculado (Continuación): Tumores Endocrinos, Tumor de Próstata.<br />
                        Modulo II. “Marcadores Tumorales Proteicos Séricos”. Sergio Nosetto. Laboratorio Bioanalitica (Ciudad Autónoma de Buenos Aires). 
                        <br />
                        12:00 – 12.30h.  Garantía de calidad en Laboratorio de Oncología<br />
                        12:30 – 13:00h. Medicina basada en la evidencia aplicada a los Marcadores Oncológicos<br />

                        13.00 hs – 14.00h   Almuerzo Libre<br />
                        <strong>Modulo III. “Marcadores Moleculares en Tumores Sólidos y Predisposición Heredada al cáncer”. Maximiliano Zeballos, Laboratorio de Hematología, Oncología y Genética, Hospital Privado de Córdoba. (Cordoba)</strong>
                        14:00 a 15:00h. Infraestructura del laboratorio dedicado al análisis molecular: Alternativas metodológicas (PCR, Secuenciación de ADN y Análisis de Fragmentos): fundamentos, técnicas, aspectos críticos, ventajas y desventajas; Purificación de ácidos nucleicos. Tipos de muestra y conservación. Definición de Mutación Genética. Líneas celulares de referencia.<br />
                        15:00 a 16:15h. Receptores celulares Implicados y utilizados en oncología: EGFR, BRAF, Familia RAS, patologías asociadas a estos marcadores, evaluación molecular y sensibilidad a drogas. Genes de predisposición heredada al cáncer: BRCA1 & 2 en mama y ovario, nuevos blancos moleculares (PALB2 y PIK3CA). Sindrome de Lynch: MLH1, MSH2, MSH6 y PMS2, papel de la inestabilidad microsatelital. Síndrome de von Hippel-Lindau y su rol en cáncer renal.<br />
                        16:15- 16:45h. Evaluación e Informes de Resultados (Bases de datos, software bioinformáticos, recomendaciones para la presentación de resultados). Transferencia de resultados  al oncólogo clínico.<br />
                        17:00h: Cierre y Entrega de Certificados.<br />

                        <hr />

                        Inscripcion: comunicarse con Colegio de Bioquímicos de Santa Fe<br />
                        Irigoyen Freyre 2940 - Santa Fe<br />
                        Tel/Fax: +54 (342) 4534144 / 4120203<br />
                        Email: cobiolit@gmail.com<br />
                        <a href="http://www.cobisfe1.org.ar/" target="_blank">http://www.cobisfe1.org.ar/</a>
                    </p>
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
                    <h4 class="modal-title" id="myModalLabel">Optimización de las pruebas de sensibilidad de los agentes etiológicos de infecciones ambulatorias: ¿qué antibióticos ensayar?, ¿qué y cómo buscar?, ¿cómo interpretar e informar al médico?</h4>
                </div>
                <div class="modal-body">
                    <p>
                        <h3>Jornada: “Optimización de las pruebas de sensibilidad de los agentes etiológicos de infecciones ambulatorias: ¿qué antibióticos ensayar?, ¿qué y cómo buscar?, ¿cómo interpretar e informar al médico?”</h3>
                        <h4>Disertante: Bqco. Marcelo Galas. Departamento de Bacteriología, Instituto Nacional de Enfermedades Infecciosas, ANLIS “Dr. C. Malbrán”, Buenos Aires.</h4>
                        <strong>Coordinadores: Santa Fe: Esp. Analia Mollerach, Bqca. Andrea Nepote y Bioqca. Carolina Aro. Parana: Esp. Francisco Salamone. </strong>
                        <br />

                        Organizada en el marco de las XVI Jornadas Argentina de Microbiología y el III Congreso Bioquímico del Litoral (http://acreditaciones.azurewebsites.net/ )
                        <br />

                        Día y Lugar: Miércoles 5 de Agosto de 2015, UPCN,  Rivadavia 2500, Santa Fe.<br />

                        Programa:<br />
                        08:30 hs Acreditaciones<br />
                        9:00-9:15 hs: Introducción, Alcance y Objetivos<br />
                        9:15-10:30 hs: Pruebas de sensibilidad en el laboratorio clínico ambulatorio. Fuentes de errores más frecuentes. La estandarización y la calidad como premisas.<br />
                        10:30-11:30 hs: Qué ensayar y porqué según la localización de la infección. Resistencias naturales en los patógenos más frecuentes.<br />
                        11:30- 12:00 hs: Intervalo<br />
                        12:00 -13:00 hs: Mecanismos de resistencia involucrados en infecciones ambulatorias, situación en Argentina. Detección a través del antibiograma de rutina.<br />
                        13:00 -14:00 hs: Interpretación e informe de las pruebas de sensibilidad basado en la utilidad de cada antibiótico en la práctica clínica.<br />
                        <hr />
                        Costo: $ 150 para estudiantes de grado e inscriptos a las XVI JAM-III CBL, $ 300 resto de los asistentes.<br />
                        Inscripción: realizar un depósito o transferencia bancaria en la cuenta: Banco Macro S.A., Sucursal: 368-Profesionales, Caja ahorros N° 436801607525500, C.B.U.	28503682-40016075255009, C.U.I.T	30-60746436-3, Titular:	 Asociación Argentina de Microbiología. Enviar a Carolina Aro (carolinaro@hotmail.com) el comprobante de pago pdf o escaneado. En el caso de estudiantes de grado e inscriptos a las XVI JAM-III CBL, enviar además los comprobantes correspondientes. Indicar DNI y nombre completo para la confección del certificado. Comunicar a Carolina Aro los datos para confeccionar el recibo de pago. NO SE TOMARÁN PAGOS EN EFECTIVO.<br />


                    </p>
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
                    <p>
                        <h3>Jornada: “Introducción a microbiota intestinal y microorganismos probióticos”</h3>
                        <h4>Organizada en el marco de las XVI Jornadas Argentina de Microbiología y el III Congreso Bioquímico del Litoral (http://acreditaciones.azurewebsites.net/ ) y en ocasión de la visita al Instituto de Lactología industrial (INLAIN, UNL-CONICET) de la Dra. Corinne Grangette, directora  del grupo de Bacterias Lácticas e Inmunidad de Mucosas del Instituto Pasteur de Lille, Francia.</h4>
                        Esta jornada está dirigida a graduados recientes y estudiantes avanzados de carreras afines, así también como a docentes, investigadores y profesionales en general que deseen tener un primer acercamiento con temas relacionados a microbiota intestinal y microorganismos benéficos para la salud, aprovechando además la oportunidad de interactuar con una investigadora extranjera referente internacional en la temática a abordar.<br />
                        Día y Lugar: Miércoles 5 de Agosto, Aula 9 (Tercer piso), Facultad de Ingeniería Química, Santiago del Estero 2829, Santa Fe.<br />
                        Programa:<br />
                        08:30 hs Acreditaciones<br />
                        09:00 hs “Intestinal Microbiota and Health”, Dra. Corinne Grangette, Instituto Pasteur de Lille, Francia.<br />
                        10:00 hs “Incorporación de probióticos en alimentos”, Dr. Jorge Reinheimer, Instituto de Lactología industrial (INLAIN, UNL-CONICET).<br />
                        11:00 hs Coffe break<br />
                        11:30 hs “Aspectos funcionales de microorganismos probióticos: importancia de la frecuencia de consumo, dosis, viabilidad y mezcla de cepas”, Dr. Gabriel Vinderola, Instituto de Lactología industrial (INLAIN, UNL-CONICET).<br />
                        12:30 hs Almuerzo libre.<br />
                        14:30 hs “Use of eukaryotic cell cultures for the selection of probiotic bacteria”, Dra. Corinne Grangette, Instituto Pasteur de Lille, Francia.<br />
                        15:30 hs “Modelos animales para la evaluación in vivo de microorganismos probióticos”, Dra. Patricia Burns, Instituto de Lactología industrial (INLAIN, UNL-CONICET).<br />
                        16:30 hs Cierre y entrega de certificados.<br />
                        <hr />
                        Responsable e inscripciones: Dra. Patricia Burns pburns@fbcb.unl.edu.ar<br />
                        Costo: $ 150 para estudiantes de grado e inscriptos a las XVI JAM-III CBL, $ 300 resto de los asistentes.<br />
                        Inscripción: realizar un depósito o transferencia bancaria en la cuenta: Banco Macro S.A., Sucursal: 368-Profesionales, Caja ahorros N° 436801607525500, C.B.U. 28503682-40016075255009, C.U.I.T 30-60746436-3, Titular: Asociación Argentina de Microbiología. Enviar a la responsable del curso (pburns@fbcb.unl.edu.ar) el comprobante de pago pdf o escaneado. En el caso de estudiantes de grado e inscriptos a las XVI JAM-III CBL, enviar además los comprobantes correspondientes. Indicar DNI y nombre completo para la confección del certificado. Comunicar a la responsable (Dra. Burns) los datos para confeccionar el recibo de pago. NO SE TOMARÁN PAGOS EN EFECTIVO.<br />


                    </p>
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
                    <h4 class="modal-title" id="myModalLabel">Taller de reconocimiento de mohos contaminantes de alimentos y ambiente</h4>
                </div>
                <div class="modal-body">
                    <p>
                        <h3>Taller de reconocimiento de mohos contaminantes de alimentos y ambiente</h3>
                        <h4>Organizado en marco de las XVI Jornadas Argentinas de Microbiología y el III Congreso Bioquímico del Litoral.</h4>
                        Día y Lugar: 4 y 5 de Agosto, aula Leloir (segundo piso). Facultad de Ingeniería Química, Santiago del Estero 2829, Santa Fe.<br />
                        Responsables del dictado: Mg. Laura Frisón y Mg. Carolina Chiericatti<br />
                        <h4>PROGRAMA</h4>
                        MARTES 4 DE AGOSTO.<br />
                        15:30 hs.   Acreditaciones.<br />
                        16:00 hs.   Mohos: generalidades.<br />
                        17:00 hs.   Café libre.<br />
                        17:30 hs.  Aislamiento y recuento de mohos contaminantes de alimentos y ambiente.<br />

                        MIÉRCOLES 5 DE AGOSTO<br />
                        09:00 hs.   Géneros fúngicos de importancia en alimentos y ambiente.<br />
                        10:00 hs.   Café.<br />
                        10:30 hs.   Identificación de especies de Aspergillus y Penicillium.<br />
                        12:00 hs.   Cierre y entrega de certificados.<br />
                        <hr />
                        Responsable inscripciones: Mg. Carolina Chiericatti cchieric@fiq.unl.edu.ar
                        <br />
                        Costo: $ 150 para estudiantes de grado e inscriptos a las XVI JAM-III CBL, $ 300 resto de los asistentes.<br />
                        Inscripción: realizar un depósito o transferencia bancaria en la cuenta: Banco Macro S.A., Sucursal: 368-Profesionales, Caja ahorros N° 436801607525500, C.B.U.	28503682-40016075255009, C.U.I.T 30-60746436-3, Titular:	 Asociación Argentina de Microbiología. Enviar a la responsable del curso el comprobante de pago pdf o escaneado. En el caso de estudiantes de grado e inscriptos a las XVI JAM-III CBL, enviar además los comprobantes correspondientes. Indicar DNI y nombre completo para la confección del certificado. Comunicar a la responsable del Taller (cchieric@fiq.unl.edu.ar) los datos para confeccionar el recibo de pago. NO SE TOMARÁN PAGOS EN EFECTIVO.<br />


                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Taller de identificación de hongos de importancia en alimentos</h4>
                </div>
                <div class="modal-body">
                    <h3>Actualización en el diagnóstico de Enfermedad de Chagas. Parasitología, Serología y Biología Molecular</h3>

                    Modalidad:  Teórico-Práctico<br />
                    Fecha: 05 de Agosto de 2015<br />
                    Duración: 10 horas. 4 hs teoría, 3 hs práctico, 3 hs evaluación.<br />
                    Lugar: Salón Dorado del Hospital Italiano- Laboratorio Central de la Provincia de Santa Fe. Dr Zavalla 3361. (Santa Fe).<br />
                    Cupo: máximo de 30 alumnos. Actividad sin costo para los inscriptos a las XIV JAM-III CBL.<br />

                    <h4>Director: Marcelo Nepote. Director del Programa Provincial de Control de la Enfermedad de Chagas. (Provincia de Santa Fe)</h4>

                    <h4>Coordinador Diego Mendicino, Email de contacto: diegomendicino@hotmail.com</h4>

                    Docentes: 
                    <br />
                    Graciela Achkar. Área Serología, Laboratorio Central de la Provincia de Santa Fe.<br />
                    Silvina Passeggi. Área Serología, Laboratorio Central de la Provincia de Santa Fe.<br />
                    Gabriela Rompato. Área Biología Molecular, Laboratorio Central de la Provincia de Santa Fe.<br />
                    Viviana Mugna. Área Biología Molecular. Laboratorio Central de la Provincia de Santa Fe.<br />
                    Diego Mendicino,  Programa Provincial de Control de la Enfermedad de Chagas (Provincia de Santa Fe)/ Centro de Investigaciones sobre Endemias Nacionales, Facultad de Bioquímica y Ciencias Biológicas, Universidad Nacional del Litoral.
                    <br />
                    Marcelo Nepote. Director del Programa Provincial de Control de la Enfermedad de Chagas (Provincia de Santa Fe).<br />

                    Colaboradores:<br />
                    Carlina Colussi. Centro de Investigaciones sobre Endemias Nacionales- Facultad de Bioquímica y Ciencias Biológicas, Universidad Nacional del Litoral.
                    <br />
                    Romina Santucci. Programa Provincial de Control de la Enfermedad de Chagas. (Provincia de Santa Fe)<br />

                    Crongrama del Curso:<br />
                    08:00-09:00: Acreditaciones:
                    <br />
                    Actividades teóricas:<br />
                    09:00-09:45 hs. Generalidades de la enfermedad. Situación actual en Santa Fe, la región y el país.<br />
                    09:45-10:30 hs. Diagnóstico de la enfermedad en diferentes situaciones.<br />
                    10:30-11:00 hs. Intervalo .<br />
                    11:00-11:45 hs. Métodos parasitológicos. Técnicas, alcances y utilidad.<br />
                    11:45-12:30 hs. Métodos serológicos. Técnicas, alcances y utilidad. Perspectivas de los nuevos test disponibles en el mercado.<br />
                    12:30-13:30 hs. Biología molecular. Utilidad actual y perspectivas.<br />

                    13:30-14:30 hs. Almuerzo Libre<br />

                    Actividades prácticas:<br />
                    14:30-16:00 hs. Resolución grupal de casos clínicos, análisis de solicitud de técnicas e interpretación de resultados de laboratorio, con exposición de las conclusiones.<br />
                    16:00-17:30 hs. Observación al microscopio de trypomastigote. Técnica parasitológica de microtubo (Fatala Chabén)<br />
                    17:30-19:00 hs. Examen post-curso. (La Evaluación también incluye un  Examen pre-curso sobre conocimientos sobre el diagnóstico de la enfermedad y el Seguimiento del desempeño durante las actividades prácticas.
                    <br />
                    17:30-18:00 hs. Cierre y Entrega de Certificados.<br />

                    <hr />
                    Inscripcion: comunicarse con Colegio de Bioquímicos de Santa Fe<br />
                    Irigoyen Freyre 2940 - Santa Fe<br />
                    Tel/Fax: +54 (342) 4534144 / 4120203<br />
                    Email: cobiolit@gmail.com<br />
                    <a href="http://www.cobisfe1.org.ar/" target="_blank">http://www.cobisfe1.org.ar/</a>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
