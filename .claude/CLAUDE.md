# Guía para Agentes - Proyecto INFORME_TSP (EleccIA)

Este proyecto contiene un documento LaTeX para un Trabajo de Suficiencia Profesional sobre el sistema **EleccIA** - un sistema de automatización inteligente para la calificación de expedientes electorales del JNE (Jurado Nacional de Elecciones) del Perú.

---

## Archivos de documentación

Antes de modificar el documento, **SIEMPRE** consulta estos archivos:

| Archivo | Propósito | Cuándo usarlo |
|---------|-----------|---------------|
| [`STRUCTURE.md`](../STRUCTURE.md) | Estructura completa del documento con labels y líneas | Para ubicar secciones, conocer labels existentes |
| [`LATEX_RULES.md`](../LATEX_RULES.md) | Convenciones y reglas de formato LaTeX | Para aplicar el formato correcto a figuras, tablas, citas |
| [`CONTENT_MAP.md`](../CONTENT_MAP.md) | Estado de adaptación EleccIA vs SIRCTGE | Para saber qué contenido adaptar y prioridades |

---

## Contexto del proyecto

### Sistema EleccIA (tema del TSP)
- **Propósito**: Herramienta de apoyo para la calificación de expedientes de inscripción de candidaturas electorales
- **Institución**: Jurado Nacional de Elecciones (JNE) del Perú
- **Enfoque**: IA como asistente, NO decisor autónomo (human-in-the-loop)
- **Contexto**: Elecciones 2026 (EG + ERM simultáneas)

### Sistema SIRCTGE (contenido heredado a adaptar)
- **Propósito original**: Sistema de Rendición de Cuentas para la Contraloría
- **Estado**: Capítulos II-V y Anexo A contienen contenido de SIRCTGE que debe adaptarse a EleccIA

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

### Para adaptar contenido SIRCTGE → EleccIA

1. Identificar sección en `CONTENT_MAP.md`
2. Leer contenido actual del `.tex`
3. Reescribir manteniendo estructura LaTeX
4. Actualizar figuras/tablas si es necesario
5. Verificar compilación: `./compilar_informe.sh`

### Para agregar nuevo contenido

1. Verificar ubicación en `STRUCTURE.md`
2. Aplicar formato según `LATEX_RULES.md`
3. Usar labels consistentes con el patrón existente
4. Agregar referencias cruzadas donde corresponda
5. Compilar y verificar PDF en `dist/`

---

## Prioridades de adaptación

Según `CONTENT_MAP.md`:

| Prioridad | Sección | Descripción |
|-----------|---------|-------------|
| **Alta** | Resumen | [TODO] - Redactar para EleccIA |
| **Alta** | Cap II | Requerimientos de EleccIA (no SIRCTGE) |
| **Alta** | Cap III | Arquitectura de EleccIA |
| **Alta** | Cap V | Conclusiones de EleccIA |
| **Media** | Cap IV | Costos reales de EleccIA |
| **Media** | Sec 1.4.2 | Cronograma con MS Project |
| **Media** | Anexo A | Lista de RF de EleccIA |

---

## Compilación

```bash
# Compilación automática
./compilar_informe.sh

# Salida
dist/INFORME_TSP.pdf
```

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

- **NO modificar** contenido del Cap I (ya está adaptado a EleccIA)
- **Preservar** el principio human-in-the-loop en toda redacción
- **Mantener** consistencia con metadatos PDF (líneas 70-75)
- **Verificar** que los índices se actualicen tras cambios (compilar 2 veces)
