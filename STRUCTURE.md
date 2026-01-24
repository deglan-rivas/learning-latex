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

## Capítulos pendientes de crear

Los siguientes capítulos deben ser creados con contenido específico de EleccIA:

| Capítulo | Título sugerido | Contenido |
|----------|-----------------|-----------|
| II | Ingeniería de Requerimientos | RF y RNF de EleccIA |
| III | Diseño | Arquitectura, UI, modelo de datos de EleccIA |
| IV | Costos | Costos reales del proyecto EleccIA |
| V | Conclusiones | Conclusiones específicas de EleccIA |
| Anexo A | Requerimientos Funcionales | Lista detallada de RF de EleccIA |

---

## Figuras del documento

| Label | Caption | Línea |
|-------|---------|-------|
| `fig:flujo-sin-eleccia` | Proceso manual de calificación de expedientes de inscripción de listas | 221 |
| `fig:flujo-con-eleccia` | Proceso asistido de calificación mediante el sistema EleccIA | 234 |

---

## Tablas del documento

| Label | Caption | Línea |
|-------|---------|-------|
| `tab:comparacion-sistemas` | Comparación de sistemas automatizados de gestión documental y validación | 328 |

---

## Labels disponibles para referencias cruzadas

### Capítulos
- `cap:problematica` - Capítulo I: Problemática

### Secciones principales
- `sec:descripcion-problema` - 1.1 Descripción del problema
- `sec:objetivos` - 1.2 Objetivos del trabajo
- `sec:soluciones-existentes` - 1.3 Soluciones existentes
- `sec:metodologias` - 1.4 Metodologías

### Subsecciones
- `subsec:objetivos-generales` - 1.2.1 Objetivos generales
- `subsec:objetivos-especificos` - 1.2.2 Objetivos específicos
- `subsec:cascada` - 1.4.1 Modelo en Cascada
- `subsec:aplicacion-cascada` - 1.4.2 Aplicación del modelo

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
