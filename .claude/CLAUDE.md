# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository. Usa un tono formal y legible sin utilizar palabras rebuscadas. Anonimiza los nombres reales, por ejemplo: cambia los nombre de EleccIA por ExpedienteIA, Jurado Nacional de Elecciones por organismo electoral encargado de velar por transparencia de los procesos electorales o similares

# Guía para Agentes - Proyecto INFORME_TSP (EleccIA)

Este proyecto contiene un documento LaTeX para un Trabajo de Suficiencia Profesional sobre el sistema **EleccIA** - un sistema de automatización inteligente para la calificación de expedientes electorales del JNE (Jurado Nacional de Elecciones) del Perú.

---

## Archivos de documentación

Antes de modificar el documento, **SIEMPRE** consulta estos archivos:

| Archivo | Propósito | Cuándo usarlo |
|---------|-----------|---------------|
| [`STRUCTURE.md`](../STRUCTURE.md) | Estructura completa del documento con labels y líneas | Para ubicar secciones, conocer labels existentes |
| [`LATEX_RULES.md`](../LATEX_RULES.md) | Convenciones y reglas de formato LaTeX | Para aplicar el formato correcto a figuras, tablas, citas |
| [`CONTENT_MAP.md`](../CONTENT_MAP.md) | Mapa de contenido y estado de desarrollo | Para saber qué secciones están completas y cuáles pendientes |

---

## Contexto del proyecto

### Sistema EleccIA (tema actual del TSP)
- **Autor**: Deglan Jesus Rivas Romero
- **Asesor**: Felix Melchor Santos Lopez
- **Institución**: Pontificia Universidad Católica del Perú
- **Propósito**: Herramienta de apoyo IA para la calificación de expedientes de inscripción de candidaturas electorales
- **Cliente**: Jurado Nacional de Elecciones (JNE) del Perú
- **Enfoque**: IA como asistente, NO decisor autónomo (human-in-the-loop)
- **Contexto**: Elecciones 2026 (EG + ERM simultáneas - "las elecciones más complejas de la historia")
- **Magnitud**: ~500,000-700,000 candidatos proyectados
- **Tecnologías**: Modelos de Lenguaje (LLM), OCR, NLP, validación con APIs públicas (RENIEC)

---

## Instrucciones para agentes

### Al modificar contenido

1. **Leer primero**: Usa `STRUCTURE.md` para encontrar la sección exacta y su label
2. **Verificar reglas**: Consulta `LATEX_RULES.md` para el formato correcto
3. **Conocer el estado**: Revisa `CONTENT_MAP.md` para saber si la sección ya está adaptada

### Al agregar figuras

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.95\textwidth]{nombre_imagen.png}
    \caption{Descripción clara de la figura}
    \label{fig:nombre-descriptivo}
\end{figure}
```

- Colocar imágenes en `imagenes/`
- Label: `fig:nombre-en-kebab-case`
- Referenciar: `Figura~\ref{fig:nombre}`

### Al agregar tablas

```latex
\begin{table}[H]
\centering
\caption{Título de la tabla}
\label{tab:nombre-descriptivo}
\begin{tabular}{@{}lcc@{}}
\toprule
\textbf{Col 1} & \textbf{Col 2} & \textbf{Col 3} \\
\midrule
Dato 1 & Dato 2 & Dato 3 \\
\bottomrule
\end{tabular}
\end{table}
```

- Usar `booktabs` (toprule, midrule, bottomrule)
- Label: `tab:nombre-en-kebab-case`
- Caption ANTES del contenido

### Al citar referencias

```latex
El autor menciona \cite{clave_referencia}
```

- Agregar entrada en `referencias.bib`
- Estilo: IEEE (numérico)
- Compilar con biber

---

## Flujo de trabajo recomendado

### Para agregar nuevo contenido (capítulos II-V, Anexo A)

1. Verificar ubicación en `STRUCTURE.md`
2. Leer `CONTENT_MAP.md` para conocer el contenido esperado
3. Aplicar formato según `LATEX_RULES.md`
4. Usar labels consistentes con el patrón existente (`cap:nombre`, `sec:nombre`, `fig:nombre-kebab`, `tab:nombre-kebab`)
5. Agregar referencias cruzadas donde corresponda (`\ref{label}`, `Figura~\ref{fig:nombre}`)
6. Compilar y verificar PDF: `./compilar_informe.sh`
7. Revisar salida en `dist/INFORME_TSP.pdf`

---

## Estado del documento

Según `STRUCTURE.md` y `CONTENT_MAP.md`:

| Sección | Estado | Prioridad |
|---------|--------|-----------|
| Cap I: Problemática | ✓ Completo | - |
| Cap II: Ingeniería de Requerimientos | ✓ Completo (155 RF, 81 RNF) | - |
| Cap III: Diseño | Parcial (3.1–3.6 listos; pendiente revisión) | Alta |
| Resumen | [TODO] - Pendiente | Alta |
| Cap V: Conclusiones | [PENDIENTE] | Alta |
| Cap IV: Costos | [PENDIENTE] | Media |
| Sec 1.4.2: Aplicación Cascada | [TODO] | Media |
| Anexo A: Requerimientos Funcionales | [PENDIENTE] | Media |

---

## Compilación

```bash
# Compilación automática (recomendado)
./compilar_informe.sh

# Compilación manual (si necesitas ejecutar paso a paso)
pdflatex INFORME_TSP.tex
biber INFORME_TSP
pdflatex INFORME_TSP.tex
pdflatex INFORME_TSP.tex

# Salida
dist/INFORME_TSP.pdf
```

**Nota**: Se requiere compilar 3 veces con `pdflatex` (después de `biber`) para que se actualicen correctamente todos los índices y referencias cruzadas.

---

## Estructura de archivos

```
learning-latex/
├── INFORME_TSP.tex          # Documento principal
├── referencias.bib           # Bibliografía
├── compilar_informe.sh       # Script de compilación
├── imagenes/                 # Directorio de imágenes
│   ├── image1.jpeg
│   ├── flujo_sin_eleccia.png
│   ├── flujo_con_eleccia.png
│   └── ...
├── dist/                     # PDF compilado
│   └── INFORME_TSP.pdf
├── STRUCTURE.md              # Documentación: estructura
├── LATEX_RULES.md            # Documentación: reglas LaTeX
├── CONTENT_MAP.md            # Documentación: mapa de contenido
└── .claude/
    └── CLAUDE.md             # Esta guía
```

---

## Notas importantes

- **Cap I está completo**: No modificar sin consultar al usuario (ya adaptado a EleccIA)
- **Preservar human-in-the-loop**: EleccIA es herramienta de APOYO, no toma decisiones autónomas
- **REGLA DE ANONIMIZACIÓN**: NO mencionar nombres específicos de instituciones PERUANAS. Usar descripciones funcionales genéricas:
  - **SOLO anonimizar instituciones peruanas**, NO organizaciones/proyectos internacionales
  - ❌ JNE (Jurado Nacional de Elecciones)
  - ✅ "el máximo órgano de administración de justicia electoral del Perú" / "el órgano electoral"
  - ❌ ONPE (Oficina Nacional de Procesos Electorales)
  - ✅ "el organismo responsable de la administración y ejecución de los procesos electorales"
  - ❌ RENIEC (Registro Nacional de Identificación y Estado Civil)
  - ✅ "el organismo de registro de identificación y estado civil"
  - ❌ Contraloría General de la República
  - ✅ "el órgano superior del sistema nacional de control"
  - ❌ "integrante del Gabinete de Asesores del JNE"
  - ✅ "especialista en temas electorales"
  - ❌ SIJE (Sistema Integrado de Justicia Electoral)
  - ✅ "la plataforma jurisdiccional"
  - ❌ DECLARA+ / Declara+
  - ✅ "la plataforma documental"
  - **Mantener nombres de**: organizaciones internacionales, proyectos extranjeros (Proyecto Victor, Pretoria, INE México, etc.), tecnologías (Gemini, AWS, GCP, Angular, Python, etc.)
  - **Regla general**: Reemplazar nombres de instituciones/sistemas peruanos por descripciones funcionales, mantener consistencia en las referencias
- **Consistencia de metadatos**: Verificar que título, autor y palabras clave sean coherentes en:
  - Líneas 65-67: `\title`, `\author`, `\date`
  - Líneas 71-76: `\hypersetup` (metadatos PDF)
  - Líneas 97-113: Portada
- **Referencias bibliográficas**:
  - Agregar nuevas entradas en `referencias.bib`
  - Estilo IEEE (numérico), compilar con `biber`
  - Citar con `\cite{clave}`
- **Compilar múltiples veces**: Necesario para actualizar índices y referencias cruzadas
