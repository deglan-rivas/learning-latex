# Estructura del Documento INFORME_TSP.tex

## Metadatos del documento

| Campo | Valor |
|-------|-------|
| **Título** | Implementación de un Sistema de Automatización Inteligente del Proceso de Calificación y Generación de Proyectos de Resolución de Expedientes mediante Modelos de Lenguaje |
| **Autor** | Deglan Jesus Rivas Romero |
| **Fecha** | Lima, 22 de enero del 2026 |
| **Institución** | Pontificia Universidad Católica del Perú - Facultad de Ciencias e Ingeniería |
| **Tipo** | Trabajo de Suficiencia Profesional para optar el título de Ingeniero Mecatrónico |
| **Asesor** | Felix Melchor Santos Lopez |

---

## Índice jerárquico completo

### Páginas preliminares (numeración romana, líneas 82-167)

```
├── Portada (líneas 85-114)
├── Resumen [TODO] (líneas 125-130)
│   └── \chapter*{Resumen} - sin \label
├── Dedicatoria (líneas 135-143)
│   └── \chapter*{Dedicatoria} - sin \label
├── Agradecimientos (líneas 148-155)
│   └── \chapter*{Agradecimientos} - sin \label
├── Índice general (línea 160)
│   └── \tableofcontents
├── Índice de tablas (líneas 162-163)
│   └── \listoftables
└── Índice de figuras (líneas 165-166)
    └── \listoffigures
```

### Contenido principal (numeración arábiga, líneas 168-386)

```
CAPÍTULO I: PROBLEMÁTICA (líneas 177-386)
├── \chapter{Problemática}
│   └── \label{cap:problematica}
│
├── 1.1 Descripción del problema (líneas 180-238)
│   └── \section{Descripción del problema}
│       └── \label{sec:descripcion-problema}
│   ├── 1.1.1 Contexto de las elecciones 2026 (líneas 185-191)
│   │   └── \subsection{Contexto de las elecciones 2026}
│   ├── 1.1.2 Restricciones presupuestales (líneas 193-197)
│   │   └── \subsection{Restricciones presupuestales}
│   ├── 1.1.3 Proceso actual de calificación de inscripciones (líneas 199-224)
│   │   └── \subsection{Proceso actual de calificación de inscripciones}
│   └── 1.1.4 Propuesta: Sistema EleccIA (líneas 226-239)
│       └── \subsection{Propuesta: Sistema EleccIA}
│
├── 1.2 Objetivos del trabajo (líneas 241-264)
│   └── \section{Objetivos del trabajo}
│       └── \label{sec:objetivos}
│   ├── 1.2.1 Objetivos generales (líneas 244-247)
│   │   └── \subsection{Objetivos generales}
│   │       └── \label{subsec:objetivos-generales}
│   └── 1.2.2 Objetivos específicos (líneas 249-264)
│       └── \subsection{Objetivos específicos}
│           └── \label{subsec:objetivos-especificos}
│
├── 1.3 Soluciones existentes (líneas 266-359)
│   └── \section{Soluciones existentes}
│       └── \label{sec:soluciones-existentes}
│   ├── 1.3.1 Sistemas de gestión judicial automatizada (líneas 271-297)
│   │   └── \subsection{Sistemas de gestión judicial automatizada}
│   │   ├── Proyecto Victor (STF Brasil)
│   │   │   └── \subsubsection{Proyecto Victor...}
│   │   ├── Pretoria (Corte Constitucional Colombia)
│   │   │   └── \subsubsection{Pretoria...}
│   │   ├── Prometea (MPF Argentina)
│   │   │   └── \subsubsection{Prometea...}
│   │   └── Amauta Pro (Poder Judicial Perú)
│   │       └── \subsubsection{Amauta Pro...}
│   ├── 1.3.2 Sistemas de validación electoral (líneas 299-305)
│   │   └── \subsection{Sistemas de validación electoral}
│   │   └── Sistema Nacional de Registro (INE México)
│   │       └── \subsubsection{Sistema Nacional de Registro...}
│   ├── 1.3.3 Soluciones comerciales de procesamiento (líneas 307-319)
│   │   └── \subsection{Soluciones comerciales de procesamiento inteligente de documentos}
│   │   ├── OCR ID de Rubricae
│   │   ├── DocuWare IDP
│   │   └── Regula
│   ├── 1.3.4 Análisis comparativo (líneas 321-351)
│   │   └── \subsection{Análisis comparativo}
│   └── 1.3.5 Síntesis y relevancia para el contexto electoral peruano (líneas 353-359)
│       └── \subsection{Síntesis y relevancia...}
│
└── 1.4 Metodologías (líneas 361-385)
    └── \section{Metodologías}
        └── \label{sec:metodologias}
    ├── 1.4.1 Modelo en Cascada (líneas 364-380)
    │   └── \subsection{Modelo en Cascada}
    │       └── \label{subsec:cascada}
    └── 1.4.2 Aplicación del modelo en Cascada al proyecto EleccIA [TODO] (líneas 382-385)
        └── \subsection{Aplicación del modelo en Cascada al proyecto EleccIA}
            └── \label{subsec:aplicacion-cascada}
```

### Material final (líneas 387-392)

```
└── Bibliografía (línea 390)
    └── \printbibliography[heading=bibintoc,title={Bibliografía}]
```

---

## Capítulos completados

| Capítulo | Estado | Descripción |
|----------|--------|-------------|
| I | ✅ COMPLETO | Problemática (líneas 177-386) |
| II | ✅ COMPLETO | Ingeniería de Requerimientos (155 RF, 81 RNF) |
| III | 🟡 PARCIAL | Diseño (arquitectura, componentes, arquitectura de aplicación, gestión de información e interfaces de usuario completos, pruebas pendiente) |

---

## CAPÍTULO II: INGENIERÍA DE REQUERIMIENTOS (líneas 387-974)

```
CAPÍTULO II: INGENIERÍA DE REQUERIMIENTOS
├── \chapter{Ingeniería de Requerimientos}
│   └── \label{cap:requerimientos}
│
├── 2.1 Desarrollo iterativo de requerimientos
│   └── \section{Desarrollo iterativo de requerimientos}
│       └── \label{sec:desarrollo-iterativo}
│   ├── 2.1.1 Iteración 1: Configuración de Parámetros
│   │   └── \subsection{Iteración 1: Configuración de Parámetros}
│   │       └── \label{subsec:iteracion1-parametros}
│   │       └── Tabla 2.1 \label{tab:iteracion1-resumen}
│   ├── 2.1.2 Iteración 2: Solicitud de Inscripción de Listas
│   │   └── \subsection{Iteración 2: Solicitud de Inscripción de Listas}
│   │       └── \label{subsec:iteracion2-inscripcion}
│   │       └── Tabla 2.2 \label{tab:iteracion2-resumen}
│   └── 2.1.3 Iteración 3: Otras Materias del Expediente
│       └── \subsection{Iteración 3: Otras Materias del Expediente}
│           └── \label{subsec:iteracion3-otras-materias}
│           └── Tabla 2.3 \label{tab:iteracion3-resumen}
│
├── 2.2 Requerimientos funcionales
│   └── \section{Requerimientos funcionales}
│       └── \label{sec:req-funcionales}
│   ├── 2.2.1 Módulo de Autenticación y Acceso
│   │   └── \subsection{Módulo de Autenticación y Acceso}
│   │       └── \label{subsec:modulo-login}
│   │       └── RF-1 a RF-11 (11 requisitos)
│   ├── 2.2.2 Módulo de Gestión de Expedientes
│   │   └── \subsection{Módulo de Gestión de Expedientes}
│   │       └── \label{subsec:modulo-expedientes}
│   │       └── RF-12 a RF-14 (3 requisitos)
│   ├── 2.2.3 Módulo de Parametrización
│   │   └── \subsection{Módulo de Parametrización}
│   │       └── \label{subsec:modulo-parametrizacion}
│   │       └── RF-15 a RF-18 (4 requisitos)
│   ├── 2.2.4 Módulo de Calificación
│   │   └── \subsection{Módulo de Calificación}
│   │       └── \label{subsec:modulo-calificacion}
│   │       └── RF-19 a RF-25, RF-73 a RF-77 (12 requisitos)
│   ├── 2.2.5 Módulo de Edición de Expedientes
│   │   └── \subsection{Módulo de Edición de Expedientes}
│   │       └── \label{subsec:modulo-edicion}
│   │       └── RF-26 a RF-32 (7 requisitos)
│   ├── 2.2.6 Módulo de Resoluciones
│   │   └── \subsection{Módulo de Resoluciones}
│   │       └── \label{subsec:modulo-resoluciones}
│   │       └── RF-33 a RF-41 (9 requisitos)
│   ├── 2.2.7 Módulo de Trazabilidad y Auditoría
│   │   └── \subsection{Módulo de Trazabilidad y Auditoría}
│   │       └── \label{subsec:modulo-trazabilidad}
│   │       └── RF-42 a RF-46 (5 requisitos)
│   ├── 2.2.8 Módulo de Administración
│   │   └── \subsection{Módulo de Administración}
│   │       └── \label{subsec:modulo-administracion}
│   │       └── RF-47 a RF-55 (9 requisitos)
│   ├── 2.2.9 Interfaces Externas
│   │   └── \subsection{Interfaces Externas}
│   │       └── \label{subsec:interfaces-externas}
│   │       └── RF-56 a RF-67 (12 requisitos)
│   ├── 2.2.10 Gestión de Datos
│   │   └── \subsection{Gestión de Datos}
│   │       └── \label{subsec:gestion-datos}
│   │       └── RF-109 a RF-129 (21 requisitos)
│   ├── 2.2.11 Instalación y Despliegue
│   │   └── \subsection{Instalación y Despliegue}
│   │       └── \label{subsec:instalacion}
│   │       └── RF-130 a RF-132 (3 requisitos)
│   ├── 2.2.12 Aceptación del Producto
│   │   └── \subsection{Aceptación del Producto}
│   │       └── \label{subsec:aceptacion}
│   │       └── RF-133 a RF-139 (7 requisitos)
│   └── 2.2.13 Documentación
│       └── \subsection{Documentación}
│           └── \label{subsec:documentacion}
│           └── RF-140 a RF-155 (16 requisitos)
│
├── 2.3 Requerimientos no funcionales
│   └── \section{Requerimientos no funcionales}
│       └── \label{sec:req-no-funcionales}
│   ├── 2.3.1 Rendimiento y Escalabilidad
│   │   └── \subsection{Rendimiento y Escalabilidad}
│   │       └── \label{subsec:rnf-rendimiento}
│   │       └── RNF-1 a RNF-4 (4 requisitos)
│   ├── 2.3.2 Seguridad y Protección
│   │   └── \subsection{Seguridad y Protección}
│   │       └── \label{subsec:rnf-seguridad}
│   │       └── RNF-5 a RNF-25 (21 requisitos)
│   ├── 2.3.3 Usabilidad y Factores Humanos
│   │   └── \subsection{Usabilidad y Factores Humanos}
│   │       └── \label{subsec:rnf-usabilidad}
│   │       └── RNF-26 a RNF-35 (10 requisitos)
│   ├── 2.3.4 Integridad y Calidad de Datos
│   │   └── \subsection{Integridad y Calidad de Datos}
│   │       └── \label{subsec:rnf-datos}
│   │       └── RNF-36 a RNF-55 (20 requisitos)
│   ├── 2.3.5 Instalación y Despliegue
│   │   └── \subsection{Instalación y Despliegue}
│   │       └── \label{subsec:rnf-instalacion}
│   │       └── RNF-56 a RNF-58 (3 requisitos)
│   ├── 2.3.6 Pruebas y Aceptación
│   │   └── \subsection{Pruebas y Aceptación}
│   │       └── \label{subsec:rnf-pruebas}
│   │       └── RNF-59 a RNF-65 (7 requisitos)
│   └── 2.3.7 Documentación
│       └── \subsection{Documentación}
│           └── \label{subsec:rnf-documentacion}
│           └── RNF-66 a RNF-81 (16 requisitos)
│
├── 2.4 Índice de requisitos funcionales
│   └── \section{Índice de requisitos funcionales}
│       └── \label{sec:indice-rf}
│       └── [Referencia al Anexo A]
│
└── 2.5 Índice de requisitos no funcionales
    └── \section{Índice de requisitos no funcionales}
        └── \label{sec:indice-rnf}
        └── [Referencia al Anexo B]
```

---

## CAPÍTULO III: DISEÑO (líneas 976-1072)

```
CAPÍTULO III: DISEÑO
├── \chapter{Diseño}
│   └── \label{cap:diseno}
│
├── 3.1 Diseño de arquitectura de software
│   └── \section{Diseño de arquitectura de software}
│       └── \label{sec:arquitectura}
│       └── Figura 3.1 \label{fig:c4-contexto}
│
├── 3.2 Diagrama de componentes
│   └── \section{Diagrama de componentes}
│       └── \label{sec:diagrama-componentes}
│       └── Figura 3.2 \label{fig:diagrama-componentes}
│
├── 3.3 Arquitectura de la aplicación
│   └── \section{Arquitectura de la aplicación}
│       └── \label{sec:arquitectura-aplicacion}
│       └── Figura 3.3 \label{fig:arquitectura-aplicacion}
│
├── 3.4 Gestión de la información
│   └── \section{Gestión de la información}
│       └── \label{sec:gestion-informacion}
│       └── Figura 3.4 \label{fig:modelo-datos}
│
├── 3.5 Diseño de Interfaces de Usuario
│   └── \section{Diseño de Interfaces de Usuario}
│       └── \label{sec:diseno-interfaces}
│   ├── 3.5.1 Dashboard de expedientes calificados
│   │   └── \subsection*{Dashboard de expedientes calificados}
│   │   └── Figura 3.5 \label{fig:ui-dashboard}
│   ├── 3.5.2 Resultado de calificación de expediente
│   │   └── \subsection*{Resultado de calificación de expediente}
│   │   └── Figura 3.6 \label{fig:ui-calificacion}
│   ├── 3.5.3 Jurisprudencia relacionada
│   │   └── \subsection*{Jurisprudencia relacionada}
│   │   └── Figura 3.7 \label{fig:ui-jurisprudencia}
│   └── 3.5.4 Proyectos de resolución
│       └── \subsection*{Proyectos de resolución}
│       └── Figura 3.8 \label{fig:ui-proyectos-resolucion}
│
└── 3.6 Diseño de pruebas [TODO]
    └── \section{Diseño de pruebas}
        └── \label{sec:diseno-pruebas}
```

---

## Capítulos pendientes de crear

Los siguientes capítulos deben ser creados con contenido específico de EleccIA:

| Capítulo | Título sugerido | Contenido |
|----------|-----------------|-----------|
| IV | Costos | Costos reales del proyecto EleccIA |
| V | Conclusiones | Conclusiones específicas de EleccIA |
| Anexo A | Requerimientos Funcionales | Lista detallada de RF de EleccIA |

---

## Figuras del documento

| Label | Caption | Capítulo |
|-------|---------|----------|
| `fig:flujo-sin-eleccia` | Proceso manual de calificación de expedientes de inscripción de listas | Cap I |
| `fig:flujo-con-eleccia` | Proceso asistido de calificación mediante el sistema EleccIA | Cap I |
| `fig:c4-contexto` | Diagrama de contexto C4 (Nivel 1) del sistema ExpedientIA | Cap III |
| `fig:diagrama-componentes` | Diagrama de componentes del sistema EleccIA | Cap III |
| `fig:arquitectura-aplicacion` | Arquitectura hexagonal del sistema ExpedientIA con adaptadores consumidores y consumidos | Cap III |
| `fig:modelo-datos` | Modelo entidad-relación de la base de datos EleccIA | Cap III |
| `fig:ui-dashboard` | Dashboard de expedientes calificados mostrando estado, organización política y tipo de expediente | Cap III |
| `fig:ui-calificacion` | Resultado detallado de calificación de expediente con veredicto y observaciones del evaluador | Cap III |
| `fig:ui-jurisprudencia` | Jurisprudencia relacionada al expediente con opciones de selección para generación de resoluciones | Cap III |
| `fig:ui-proyectos-resolucion` | Proyectos de Resolución generados automáticamente que requieren validación del Asistente Jurisdiccional | Cap III |

---

## Tablas del documento

| Label | Caption | Capítulo |
|-------|---------|----------|
| `tab:comparacion-sistemas` | Comparación de sistemas automatizados de gestión documental y validación | Cap I |
| `tab:iteracion1-resumen` | Resumen de requisitos funcionales de la Iteración 1 | Cap II |
| `tab:iteracion2-resumen` | Resumen de requisitos funcionales de la Iteración 2 | Cap II |
| `tab:iteracion3-resumen` | Resumen de requisitos funcionales de la Iteración 3 | Cap II |

---

## Labels disponibles para referencias cruzadas

### Capítulos
- `cap:problematica` - Capítulo I: Problemática
- `cap:requerimientos` - Capítulo II: Ingeniería de Requerimientos
- `cap:diseno` - Capítulo III: Diseño

### Secciones principales - Capítulo I
- `sec:descripcion-problema` - 1.1 Descripción del problema
- `sec:objetivos` - 1.2 Objetivos del trabajo
- `sec:soluciones-existentes` - 1.3 Soluciones existentes
- `sec:metodologias` - 1.4 Metodologías

### Secciones principales - Capítulo II
- `sec:desarrollo-iterativo` - 2.1 Desarrollo iterativo de requerimientos
- `sec:req-funcionales` - 2.2 Requerimientos funcionales
- `sec:req-no-funcionales` - 2.3 Requerimientos no funcionales
- `sec:indice-rf` - 2.4 Índice de requisitos funcionales
- `sec:indice-rnf` - 2.5 Índice de requisitos no funcionales

### Secciones principales - Capítulo III
- `sec:arquitectura` - 3.1 Diseño de arquitectura de software (Diagrama C4 Nivel 1, `fig:c4-contexto`)
- `sec:diagrama-componentes` - 3.2 Diagrama de componentes
- `sec:arquitectura-aplicacion` - 3.3 Arquitectura de la aplicación
- `sec:gestion-informacion` - 3.4 Gestión de la información
- `sec:diseno-interfaces` - 3.5 Diseño de Interfaces de Usuario
- `sec:diseno-pruebas` - 3.6 Diseño de pruebas

### Subsecciones - Capítulo I
- `subsec:objetivos-generales` - 1.2.1 Objetivos generales
- `subsec:objetivos-especificos` - 1.2.2 Objetivos específicos
- `subsec:cascada` - 1.4.1 Modelo en Cascada
- `subsec:aplicacion-cascada` - 1.4.2 Aplicación del modelo

### Subsecciones - Capítulo II (Iteraciones)
- `subsec:iteracion1-parametros` - 2.1.1 Iteración 1: Configuración de Parámetros
- `subsec:iteracion2-inscripcion` - 2.1.2 Iteración 2: Solicitud de Inscripción de Listas
- `subsec:iteracion3-otras-materias` - 2.1.3 Iteración 3: Otras Materias

### Subsecciones - Capítulo II (Requisitos Funcionales)
- `subsec:modulo-login` - 2.2.1 Módulo de Autenticación y Acceso
- `subsec:modulo-expedientes` - 2.2.2 Módulo de Gestión de Expedientes
- `subsec:modulo-parametrizacion` - 2.2.3 Módulo de Parametrización
- `subsec:modulo-calificacion` - 2.2.4 Módulo de Calificación
- `subsec:modulo-edicion` - 2.2.5 Módulo de Edición de Expedientes
- `subsec:modulo-resoluciones` - 2.2.6 Módulo de Resoluciones
- `subsec:modulo-trazabilidad` - 2.2.7 Módulo de Trazabilidad y Auditoría
- `subsec:modulo-administracion` - 2.2.8 Módulo de Administración
- `subsec:interfaces-externas` - 2.2.9 Interfaces Externas
- `subsec:gestion-datos` - 2.2.10 Gestión de Datos
- `subsec:instalacion` - 2.2.11 Instalación y Despliegue
- `subsec:aceptacion` - 2.2.12 Aceptación del Producto
- `subsec:documentacion` - 2.2.13 Documentación

### Subsecciones - Capítulo II (Requisitos No Funcionales)
- `subsec:rnf-rendimiento` - 2.3.1 Rendimiento y Escalabilidad
- `subsec:rnf-seguridad` - 2.3.2 Seguridad y Protección
- `subsec:rnf-usabilidad` - 2.3.3 Usabilidad y Factores Humanos
- `subsec:rnf-datos` - 2.3.4 Integridad y Calidad de Datos
- `subsec:rnf-instalacion` - 2.3.5 Instalación y Despliegue
- `subsec:rnf-pruebas` - 2.3.6 Pruebas y Aceptación
- `subsec:rnf-documentacion` - 2.3.7 Documentación

---

## Estructura para nuevos capítulos

Al agregar los capítulos pendientes, usar esta estructura:

```latex
% ============================================
% CAPÍTULO II: INGENIERÍA DE REQUERIMIENTOS
% ============================================
\chapter{Ingeniería de Requerimientos}
\label{cap:requerimientos}

\section{Requerimientos funcionales}
\label{sec:req-funcionales}

\section{Requerimientos no funcionales}
\label{sec:req-no-funcionales}
```

### Labels sugeridos para nuevos capítulos

| Capítulo | Label sugerido |
|----------|----------------|
| Ingeniería de Requerimientos | `cap:requerimientos` |
| Diseño | `cap:diseno` |
| Costos | `cap:costos` |
| Conclusiones | `cap:conclusiones` |
| Anexo A | `anexo:requerimientos-funcionales` |
