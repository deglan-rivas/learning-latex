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

### Contenido principal (numeración arábiga, líneas 168-868)

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

CAPÍTULO II: INGENIERÍA DE REQUERIMIENTOS (líneas 390-508) ⚠️ SIRCTGE
├── \chapter{Ingeniería de Requerimientos}
│   └── \label{cap:requerimientos}
│
├── 2.1 Requerimientos funcionales (líneas 395-462)
│   └── \section{Requerimientos funcionales}
│       └── \label{sec:req-funcionales}
│
└── 2.2 Requerimientos no funcionales (líneas 464-508)
    └── \section{Requerimientos no funcionales}
        └── \label{sec:req-no-funcionales}

CAPÍTULO III: DISEÑO (líneas 513-712) ⚠️ SIRCTGE
├── \chapter{Diseño}
│   └── \label{cap:diseno}
│
├── 3.1 Diseño de arquitectura de software (líneas 518-609)
│   └── \section{Diseño de arquitectura de software}
│       └── \label{sec:arquitectura}
│   ├── 3.1.1 Diagrama de contexto (líneas 523-552)
│   │   └── \subsection{Diagrama de contexto}
│   │       └── \label{subsec:diagrama-contexto}
│   └── 3.1.2 Diagrama de componente nivel I (líneas 554-609)
│       └── \subsection{Diagrama de componente nivel I}
│           └── \label{subsec:diagrama-componentes}
│       ├── Capa de Presentación (Frontend)
│       │   └── \subsubsection{Capa de Presentación (Frontend)}
│       ├── Capa de Lógica de Negocio (Backend)
│       │   └── \subsubsection{Capa de Lógica de Negocio (Backend)}
│       └── Capa de Datos
│           └── \subsubsection{Capa de Datos}
│
├── 3.2 Diseño de interfaz de usuario (líneas 611-622)
│   └── \section{Diseño de interfaz de usuario}
│       └── \label{sec:diseno-interfaz}
│
├── 3.3 Modelo de datos (líneas 624-636)
│   └── \section{Modelo de datos}
│       └── \label{sec:modelo-datos}
│
├── 3.4 Diseño de pruebas (líneas 638-650)
│   └── \section{Diseño de pruebas}
│       └── \label{sec:diseno-pruebas}
│
└── 3.5 Pruebas y validaciones (líneas 652-712)
    └── \section{Pruebas y validaciones}
        └── \label{sec:pruebas-validaciones}
    ├── 3.5.1 Pruebas unitarias (líneas 655-665)
    │   └── \subsection{Pruebas unitarias}
    ├── 3.5.2 Pruebas de integración (líneas 667-679)
    │   └── \subsection{Pruebas de integración}
    ├── 3.5.3 Pruebas de rendimiento (líneas 681-692)
    │   └── \subsection{Pruebas de rendimiento}
    └── 3.5.4 Pruebas de seguridad (líneas 694-712)
        └── \subsection{Pruebas de seguridad}

CAPÍTULO IV: COSTOS (líneas 717-827) ⚠️ SIRCTGE
├── \chapter{Costos}
│   └── \label{cap:costos}
│
├── 4.1 Costos de personal (líneas 722-758)
│   └── \section{Costos de personal}
│       └── \label{sec:costos-personal}
│
├── 4.2 Costos de herramientas e infraestructura (líneas 760-800)
│   └── \section{Costos de herramientas e infraestructura}
│       └── \label{sec:costos-herramientas}
│
└── 4.3 Resumen de costos (líneas 802-827)
    └── \section{Resumen de costos}
        └── \label{sec:resumen-costos}

CAPÍTULO V: CONCLUSIONES (líneas 832-868) ⚠️ SIRCTGE
└── \chapter{Conclusiones}
    └── \label{cap:conclusiones}
```

### Material final (líneas 870-955)

```
├── Bibliografía (línea 873)
│   └── \printbibliography[heading=bibintoc,title={Bibliografía}]
│
└── ANEXOS (líneas 878-953) ⚠️ SIRCTGE
    └── \appendix
    └── Anexo A: Lista de Requerimientos Funcionales del Sistema (líneas 880-953)
        └── \chapter{Lista de Requerimientos Funcionales del Sistema}
            └── \label{anexo:requerimientos-funcionales}
        ├── A.1 Requerimientos Sprint 1-2: Mantenimientos y Autenticación
        │   └── \section{Requerimientos Sprint 1-2...}
        ├── A.2 Requerimientos Sprint 3: Configuradores
        │   └── \section{Requerimientos Sprint 3...}
        ├── A.3 Requerimientos Sprint 4: Gestión de Roles y Permisos
        │   └── \section{Requerimientos Sprint 4...}
        ├── A.4 Requerimientos Sprint 5-6: Sistemas Administrativos
        │   └── \section{Requerimientos Sprint 5-6...}
        ├── A.5 Requerimientos Sprint 7: Indicadores y Dashboards
        │   └── \section{Requerimientos Sprint 7...}
        └── A.6 Requerimientos Sprint 8: Informes y Constancias
            └── \section{Requerimientos Sprint 8...}
```

---

## Figuras del documento

| Label | Caption | Línea |
|-------|---------|-------|
| `fig:flujo-sin-eleccia` | Proceso manual de calificación de expedientes de inscripción de listas | 221 |
| `fig:flujo-con-eleccia` | Proceso asistido de calificación mediante el sistema EleccIA | 234 |
| `fig:diagrama-contexto` | Diagrama de contexto del SIRCTGE | 532 |
| `fig:componentes-nivel1` | Diagrama de componente nivel I del SIRCTGE | 563 |

---

## Tablas del documento

| Label | Caption | Línea |
|-------|---------|-------|
| `tab:comparacion-sistemas` | Comparación de sistemas automatizados de gestión documental y validación | 328 |
| `tab:req-no-funcionales` | Requerimientos no funcionales del SIRCTGE | 472 |
| `tab:costos-personal` | Costos de personal del proyecto SIRCTGE | 730 |
| `tab:costos-herramientas` | Costos de herramientas e infraestructura del proyecto SIRCTGE | 767 |
| `tab:resumen-costos` | Resumen consolidado de costos del proyecto SIRCTGE | 809 |

---

## Labels disponibles para referencias cruzadas

### Capítulos
- `cap:problematica` - Capítulo I: Problemática
- `cap:requerimientos` - Capítulo II: Ingeniería de Requerimientos
- `cap:diseno` - Capítulo III: Diseño
- `cap:costos` - Capítulo IV: Costos
- `cap:conclusiones` - Capítulo V: Conclusiones

### Secciones principales
- `sec:descripcion-problema` - 1.1 Descripción del problema
- `sec:objetivos` - 1.2 Objetivos del trabajo
- `sec:soluciones-existentes` - 1.3 Soluciones existentes
- `sec:metodologias` - 1.4 Metodologías
- `sec:req-funcionales` - 2.1 Requerimientos funcionales
- `sec:req-no-funcionales` - 2.2 Requerimientos no funcionales
- `sec:arquitectura` - 3.1 Diseño de arquitectura de software
- `sec:diseno-interfaz` - 3.2 Diseño de interfaz de usuario
- `sec:modelo-datos` - 3.3 Modelo de datos
- `sec:diseno-pruebas` - 3.4 Diseño de pruebas
- `sec:pruebas-validaciones` - 3.5 Pruebas y validaciones
- `sec:costos-personal` - 4.1 Costos de personal
- `sec:costos-herramientas` - 4.2 Costos de herramientas
- `sec:resumen-costos` - 4.3 Resumen de costos

### Subsecciones
- `subsec:objetivos-generales` - 1.2.1 Objetivos generales
- `subsec:objetivos-especificos` - 1.2.2 Objetivos específicos
- `subsec:cascada` - 1.4.1 Modelo en Cascada
- `subsec:aplicacion-cascada` - 1.4.2 Aplicación del modelo
- `subsec:diagrama-contexto` - 3.1.1 Diagrama de contexto
- `subsec:diagrama-componentes` - 3.1.2 Diagrama de componentes

### Anexos
- `anexo:requerimientos-funcionales` - Anexo A
