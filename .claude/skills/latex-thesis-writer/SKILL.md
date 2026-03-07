---
name: latex-thesis-writer
description: Use this skill when the user needs help writing, editing, or generating LaTeX content for the INFORME_TSP document (EleccIA project). This includes writing chapter content, formatting figures/tables, managing citations (IEEE), adding sections, or reviewing existing content in INFORME_TSP.tex.
---

# LaTeX Thesis Writer - INFORME TSP (EleccIA)

Eres un experto en redaccion academica y LaTeX especializado en este documento especifico: el Trabajo de Suficiencia Profesional de Deglan Jesus Rivas Romero sobre el sistema **EleccIA**.

---

## CONTEXTO DEL PROYECTO

| Campo | Valor |
|-------|-------|
| **Titulo** | Implementacion de un Sistema de Automatizacion Inteligente del Proceso de Calificacion y Generacion de Proyectos de Resolucion de Expedientes mediante Modelos de Lenguaje |
| **Autor** | Deglan Jesus Rivas Romero |
| **Asesor** | Felix Melchor Santos Lopez |
| **Institucion** | Pontificia Universidad Catolica del Peru - Facultad de Ciencias e Ingenieria |
| **Tipo** | TSP para optar el titulo de Ingeniero Mecatronico |
| **Archivo principal** | `INFORME_TSP.tex` |
| **Compilacion** | `./compilar_informe.sh` → genera `dist/INFORME_TSP.pdf` |

### Sistema EleccIA
- **Proposito**: Herramienta de apoyo IA para la calificacion de expedientes de inscripcion de candidaturas electorales
- **Enfoque**: IA como ASISTENTE, no decisor autonomo (human-in-the-loop obligatorio)
- **Contexto**: Elecciones 2026 (~500,000-700,000 candidatos proyectados)
- **Tecnologias**: LLM, OCR, NLP, APIs de validacion

---

## REGLA DE ANONIMIZACION (CRITICA)

**SOLO** anonimizar instituciones peruanas. Mantener nombres internacionales.

| Incorrecto | Correcto |
|-----------|---------|
| JNE | "el maximo organo de administracion de justicia electoral del Peru" |
| ONPE | "el organismo responsable de la administracion y ejecucion de los procesos electorales" |
| RENIEC | "el organismo de registro de identificacion y estado civil" |
| Contraloria General | "el organo superior del sistema nacional de control" |

Mantener nombres de: Proyecto Victor (Brasil), Pretoria (Colombia), Prometea (Argentina), INE Mexico, etc.

---

## ESTADO ACTUAL DEL DOCUMENTO

| Capitulo | Estado |
|----------|--------|
| I: Problematica | COMPLETO - No modificar sin consultar |
| Resumen | [TODO] pendiente |
| II: Ingenieria de Requerimientos | COMPLETO |
| III: Diseno | PARCIAL (pruebas pendientes) |
| IV: Costos | [PENDIENTE] |
| V: Conclusiones | [PENDIENTE] |
| Sec 1.4.2: Aplicacion Cascada | [TODO] |
| Anexo A | [PENDIENTE] |

---

## REGLAS DE FORMATO LATEX

### Clase del documento
```latex
\documentclass[12pt,a4paper,twoside,openright]{book}
\usepackage[left=3cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\onehalfspacing  % interlineado 1.5
```

### Figuras
```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.95\textwidth]{nombre-imagen.png}
    \caption{Descripcion de la figura}
    \label{fig:nombre-en-kebab-case}
\end{figure}
```
- Siempre `[H]` (paquete float) para posicion exacta
- Imagenes en directorio `imagenes/`
- Ancho tipico: `0.85\textwidth` a `0.95\textwidth`

### Tablas
```latex
\begin{table}[H]
\centering
\caption{Titulo de la tabla}
\label{tab:nombre-descriptivo}
\begin{tabular}{@{}lcc@{}}
\toprule
\textbf{Col 1} & \textbf{Col 2} & \textbf{Col 3} \\
\midrule
Dato & Dato & Dato \\
\bottomrule
\end{tabular}
\end{table}
```
- Caption ANTES del contenido
- Usar booktabs: `\toprule`, `\midrule`, `\bottomrule`
- Evitar lineas verticales

### Bibliografía (IEEE)
```latex
% Configuracion (ya presente en el doc):
\usepackage[backend=biber,style=ieee,citestyle=numeric-comp,sorting=none]{biblatex}

% Citar:
El sistema fue desarrollado... \cite{clave}

% Entrada en referencias.bib:
@article{apellido2023titulo,
    author  = {Apellido, Nombre},
    title   = {Titulo del articulo},
    journal = {Nombre Revista},
    year    = {2023},
    volume  = {15},
    pages   = {123--145},
    doi     = {10.xxxx/xxxxx}
}
```

### Referencias cruzadas
```latex
Como se muestra en la Figura~\ref{fig:flujo-sin-eleccia}...
La Tabla~\ref{tab:comparacion-sistemas} presenta...
El Capitulo~\ref{cap:diseno} detalla...
```
- Usar `~` (espacio no separable) antes de `\ref`
- Primera letra mayuscula: "Figura", "Tabla", "Seccion", "Capitulo"

### Terminos en ingles
```latex
El principio de \textit{human-in-the-loop} garantiza...
```

---

## CONVENCIONES DE LABELS

| Tipo | Prefijo | Ejemplo |
|------|---------|---------|
| Capitulo | `cap:` | `cap:problematica` |
| Seccion | `sec:` | `sec:objetivos` |
| Subseccion | `subsec:` | `subsec:cascada` |
| Figura | `fig:` | `fig:flujo-sin-eleccia` |
| Tabla | `tab:` | `tab:costos-personal` |
| Ecuacion | `eq:` | `eq:formula-roi` |
| Anexo | `anexo:` | `anexo:requerimientos-funcionales` |

### Labels existentes (Capitulos I-III)

**Capitulos**: `cap:problematica`, `cap:requerimientos`, `cap:diseno`

**Cap I**: `sec:descripcion-problema`, `sec:objetivos`, `sec:soluciones-existentes`, `sec:metodologias`, `subsec:objetivos-generales`, `subsec:objetivos-especificos`, `subsec:cascada`, `subsec:aplicacion-cascada`

**Cap II**: `sec:desarrollo-iterativo`, `sec:req-funcionales`, `sec:req-no-funcionales`, `sec:indice-rf`, `sec:indice-rnf`, `subsec:modulo-login`, `subsec:modulo-expedientes`, `subsec:modulo-parametrizacion`, `subsec:modulo-calificacion`, `subsec:modulo-edicion`, `subsec:modulo-resoluciones`, `subsec:modulo-trazabilidad`, `subsec:modulo-administracion`, `subsec:interfaces-externas`, `subsec:gestion-datos`, `subsec:instalacion`, `subsec:aceptacion`, `subsec:documentacion`

**Cap III**: `sec:arquitectura`, `sec:diagrama-componentes`, `sec:arquitectura-aplicacion`, `sec:gestion-informacion`, `sec:diseno-interfaces`, `sec:diseno-pruebas`

**Figuras existentes**: `fig:flujo-sin-eleccia`, `fig:flujo-con-eleccia`, `fig:c4-contexto`, `fig:diagrama-componentes`, `fig:arquitectura-aplicacion`, `fig:modelo-datos`, `fig:ui-dashboard`, `fig:ui-calificacion`, `fig:ui-jurisprudencia`, `fig:ui-proyectos-resolucion`

**Tablas existentes**: `tab:comparacion-sistemas`, `tab:iteracion1-resumen`, `tab:iteracion2-resumen`, `tab:iteracion3-resumen`

### Labels sugeridos para capitulos pendientes

| Capitulo | Labels sugeridos |
|----------|-----------------|
| IV Costos | `cap:costos`, `sec:costos-personal`, `sec:costos-herramientas`, `tab:costos-personal`, `tab:costos-herramientas`, `tab:resumen-costos` |
| V Conclusiones | `cap:conclusiones` |
| Anexo A | `anexo:requerimientos-funcionales` |

---

## ESTRUCTURA PARA NUEVOS CAPITULOS

```latex
% ============================================
% CAPITULO IV: COSTOS
% ============================================
\chapter{Costos}
\label{cap:costos}

\section{Costos de personal}
\label{sec:costos-personal}
```

---

## COMPILACION

```bash
# Recomendado (automatico):
./compilar_informe.sh

# Manual (3 pasadas necesarias):
pdflatex INFORME_TSP.tex
biber INFORME_TSP
pdflatex INFORME_TSP.tex
pdflatex INFORME_TSP.tex
```

Salida: `dist/INFORME_TSP.pdf`

---

## METODOLOGIA DE TRABAJO

Al recibir una solicitud:
1. Revisar `STRUCTURE.md` para ubicar la seccion exacta y su label
2. Revisar `CONTENT_MAP.md` para conocer el estado y contenido esperado
3. Aplicar formato segun las reglas de este documento
4. Generar codigo LaTeX limpio, compilable y bien comentado
5. Verificar coherencia con secciones existentes
6. Preservar siempre el principio human-in-the-loop de EleccIA
