# Reglas LaTeX para INFORME_TSP.tex

Este documento describe las convenciones y reglas de formato utilizadas en el documento LaTeX del Trabajo de Suficiencia Profesional.

---

## Clase y configuración del documento

```latex
\documentclass[12pt,a4paper,twoside,openright]{book}
```

- **Tamaño de fuente**: 12pt
- **Papel**: A4
- **Impresión**: Doble cara (twoside)
- **Capítulos**: Comienzan en página impar (openright)

### Márgenes

```latex
\usepackage[left=3cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
```

- Margen izquierdo mayor (3cm) para encuadernación

### Interlineado

```latex
\usepackage{setspace}
\onehalfspacing
```

- Interlineado: 1.5

---

## Figuras

### Formato estándar

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.95\textwidth]{nombre-imagen.png}
    \caption{Descripción de la figura}
    \label{fig:nombre-descriptivo}
\end{figure}
```

### Reglas para figuras

| Aspecto | Regla |
|---------|-------|
| **Posición** | Usar `[H]` (paquete float) para posición exacta |
| **Centrado** | Siempre usar `\centering` |
| **Ancho** | Típicamente `0.85\textwidth` a `0.95\textwidth` |
| **Formato label** | `fig:nombre-en-kebab-case` |
| **Caption** | Obligatorio (aparece en índice de figuras) |
| **Directorio** | Las imágenes están en `imagenes/` (configurado con `\graphicspath`) |

### Ejemplos del documento

```latex
\label{fig:flujo-sin-eleccia}
\label{fig:flujo-con-eleccia}
\label{fig:diagrama-contexto}
\label{fig:componentes-nivel1}
```

### Subfiguras (disponible)

```latex
\usepackage{subcaption}

\begin{figure}[H]
    \centering
    \begin{subfigure}[b]{0.45\textwidth}
        \includegraphics[width=\textwidth]{imagen1.png}
        \caption{Subfigura A}
        \label{fig:sub-a}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.45\textwidth}
        \includegraphics[width=\textwidth]{imagen2.png}
        \caption{Subfigura B}
        \label{fig:sub-b}
    \end{subfigure}
    \caption{Figura principal con subfiguras}
    \label{fig:principal}
\end{figure}
```

---

## Tablas

### Formato estándar con booktabs

```latex
\begin{table}[H]
\centering
\caption{Título de la tabla}
\label{tab:nombre-descriptivo}
\begin{tabular}{@{}lcc@{}}
\toprule
\textbf{Columna 1} & \textbf{Columna 2} & \textbf{Columna 3} \\
\midrule
Dato 1 & Dato 2 & Dato 3 \\
Dato 4 & Dato 5 & Dato 6 \\
\bottomrule
\end{tabular}
\end{table}
```

### Tablas con ancho completo (tabularx)

```latex
\begin{table}[H]
\centering
\caption{Tabla con ancho de página}
\label{tab:nombre}
\begin{tabularx}{\textwidth}{|X|c|c|}
\hline
\textbf{Columna flexible} & \textbf{Col 2} & \textbf{Col 3} \\
\hline
Contenido largo que se ajusta & Dato & Dato \\
\hline
\end{tabularx}
\end{table}
```

### Reglas para tablas

| Aspecto | Regla |
|---------|-------|
| **Posición** | Usar `[H]` para posición exacta |
| **Líneas horizontales** | Usar `\toprule`, `\midrule`, `\bottomrule` (booktabs) |
| **Líneas verticales** | Evitar cuando sea posible (estilo académico) |
| **Formato label** | `tab:nombre-en-kebab-case` |
| **Caption** | Obligatorio, va ANTES del contenido de la tabla |
| **Encabezados** | En negrita con `\textbf{}` |
| **Espacio entre filas** | Usar `\addlinespace` para separación visual |

### Tablas de costos con columnas descriptivas (patrón Cap IV)

Patrón establecido para tablas con columnas descriptivas a la izquierda y columnas numéricas a la derecha. Usar **`\begin{tabular}`** (no `tabularx`) con anchos fijos en `p{}`.

**Ancho de texto disponible**: A4 con márgenes (left=3cm, right=2.5cm) → `\textwidth` ≈ 15.5 cm.
Con `@{}` en ambos extremos y N columnas → restar ≈ 0.42 cm por separador interno.

#### Variante A — 1 columna descriptiva ancha + 3 columnas numéricas estrechas (tabla 4.1)

```latex
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{8cm}
                   >{\centering\arraybackslash}p{2cm}
                   >{\centering\arraybackslash}p{2cm}
                   >{\centering\arraybackslash}p{2cm}@{}}
\toprule
\textbf{Rol} & \textbf{Cantidad} & \textbf{Tarifa mensual (S/)} & \textbf{Subtotal (S/)} \\
\midrule
Nombre del rol & 1 & 10{,}000.00 & 110{,}000.00 \\
\midrule
\multicolumn{3}{r}{\textbf{Total}} & \textbf{S/ 110{,}000.00} \\
\bottomrule
\end{tabular}
```

- Columna descriptiva: `p{8cm}` alineada a la izquierda (`\raggedright`)
- Columnas numéricas: `p{2cm}` centradas (`\centering`)
- Encabezados largos se parten en múltiples líneas automáticamente
- Total: `\multicolumn{N-1}{r}{...} & valor`

#### Variante B — 2 columnas descriptivas + 2 columnas numéricas (tablas 4.2, 4.3)

```latex
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{4.6cm}
                   >{\raggedright\arraybackslash}p{4.6cm}
                   >{\centering\arraybackslash}p{2.5cm}
                   >{\centering\arraybackslash}p{2.5cm}@{}}
\toprule
\textbf{Concepto} & \textbf{Descripción} & \textbf{Costo mensual (S/)} & \textbf{Subtotal (S/)} \\
\midrule
Componente & Descripción del componente & 0.00 & 0.00 \\
\midrule
\multicolumn{3}{r}{\textbf{Total}} & \textbf{S/ 0.00} \\
\bottomrule
\end{tabular}
```

- Columnas descriptivas: `p{4.6cm}` c/u, alineadas a la izquierda
- Columnas de valor: `p{2.5cm}` centradas
- Suma: 4.6+4.6+2.5+2.5 = 14.2 cm (+ separadores ≈ 15.47 cm ≤ 15.5 cm ✓)

#### Variante C — 1 columna descriptiva + 2 columnas numéricas (tabla 4.4)

```latex
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{9.5cm}
                   >{\centering\arraybackslash}p{3cm}
                   >{\centering\arraybackslash}p{3cm}@{}}
\toprule
\textbf{Concepto} & \textbf{Costo mensual (S/)} & \textbf{Subtotal (S/)} \\
\midrule
Nombre del concepto & 4{,}000.00 & 24{,}000.00 \\
\midrule
\multicolumn{2}{r}{\textbf{Total}} & \textbf{S/ 24{,}000.00} \\
\bottomrule
\end{tabular}
```

#### Legibilidad de números grandes — separador de miles

Usar `{,}` como separador de miles para que LaTeX no interprete la coma como separador de argumento:

```latex
% Correcto
1{,}243{,}000.00

% Incorrecto (LaTeX puede malinterpretar)
1,243,000.00
```

### Tablas largas (longtable)

```latex
\begin{longtable}{|c|p{5cm}|c|}
\caption{Tabla que puede ocupar varias páginas} \label{tab:larga} \\
\hline
\textbf{Col 1} & \textbf{Col 2} & \textbf{Col 3} \\
\hline
\endfirsthead
% Cabecera para páginas siguientes
\hline
\textbf{Col 1} & \textbf{Col 2} & \textbf{Col 3} \\
\hline
\endhead
% Contenido...
\end{longtable}
```

---

## Bibliografía

### Configuración

```latex
\usepackage[backend=biber,style=ieee,citestyle=numeric-comp,sorting=none]{biblatex}
\addbibresource{referencias.bib}
```

- **Estilo**: IEEE (numérico)
- **Backend**: biber (no bibtex)
- **Archivo**: `referencias.bib`
- **Ordenamiento**: Por orden de aparición (sorting=none)

### Citar referencias

```latex
% Cita simple
El sistema fue desarrollado... \cite{royce1970managing}

% Múltiples citas
Varios autores coinciden \cite{ref1,ref2,ref3}

% Cita con página
Como indica el autor \cite[p.~45]{referencia}
```

### Formato de entrada en referencias.bib

```bibtex
@article{royce1970managing,
    author = {Royce, Winston W.},
    title = {Managing the Development of Large Software Systems},
    journal = {Proceedings of IEEE WESCON},
    year = {1970},
    volume = {26},
    pages = {1--9}
}

@online{onpe2022erm,
    author = {{ONPE}},
    title = {Elecciones Regionales y Municipales 2022},
    year = {2022},
    url = {https://www.onpe.gob.pe},
    urldate = {2025-01-15}
}

@misc{jne2025candidatos,
    author = {{JNE}},
    title = {Proyección de candidatos para EG 2026},
    year = {2025},
    note = {Declaraciones de Román Campos}
}
```

### Imprimir bibliografía

```latex
\printbibliography[heading=bibintoc,title={Bibliografía}]
```

---

## Referencias cruzadas

### Formato estándar

```latex
% Figuras
Como se muestra en la Figura~\ref{fig:flujo-sin-eleccia}...

% Tablas
La Tabla~\ref{tab:comparacion-sistemas} presenta...

% Secciones
Según lo descrito en la Sección~\ref{sec:objetivos}...

% Capítulos
El Capítulo~\ref{cap:diseno} detalla...
```

### Reglas importantes

- Usar `~` (espacio no separable) entre "Figura/Tabla/Sección" y `\ref`
- Primera letra mayúscula: "Figura", "Tabla", "Sección", "Capítulo"
- El label debe existir y estar definido antes o después en el documento

---

## Listas

### Lista numerada

```latex
\begin{enumerate}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{enumerate}
```

### Lista con viñetas

```latex
\begin{itemize}
    \item Elemento uno
    \item Elemento dos
    \item Elemento tres
\end{itemize}
```

### Listas anidadas

```latex
\begin{itemize}
    \item \textbf{Categoría principal}
    \begin{itemize}
        \item Sub-elemento 1
        \item Sub-elemento 2
    \end{itemize}
\end{itemize}
```

---

## Formato de texto

### Énfasis y estilos

```latex
\textbf{Negrita}
\textit{Cursiva}
\texttt{Monoespaciado (código)}
\emph{Énfasis (cursiva semántica)}
```

### Términos técnicos en inglés

```latex
% Usar cursiva para términos en inglés no traducidos
El principio de \textit{human-in-the-loop} garantiza...
```

### Comillas

```latex
% Comillas españolas (dobles)
``texto entrecomillado''

% Comillas simples
`texto'
```

---

## Secciones especiales

### Capítulos sin numerar (preliminares)

```latex
\chapter*{Resumen}
\addcontentsline{toc}{chapter}{Resumen}
```

### Texto destacado

```latex
% Para TODOs o notas pendientes
[TODO] Contenido pendiente...
```

---

## Paquetes disponibles y su uso

| Paquete | Uso |
|---------|-----|
| `inputenc` | Codificación UTF-8 |
| `babel` | Idioma español (es-tabla, es-nodecimaldot) |
| `fontenc` | Codificación T1 de fuentes |
| `geometry` | Márgenes de página |
| `biblatex` | Gestión bibliográfica IEEE |
| `graphicx` | Inclusión de imágenes |
| `float` | Posicionamiento [H] |
| `caption` | Formato de captions (small, labelfont=bf) |
| `subcaption` | Subfiguras |
| `booktabs` | Tablas profesionales (toprule, midrule, bottomrule) |
| `longtable` | Tablas de varias páginas |
| `multirow` | Celdas multi-fila |
| `array` | Extensiones de tablas |
| `tabularx` | Tablas con ancho flexible |
| `amsmath` | Ecuaciones matemáticas |
| `amssymb` | Símbolos matemáticos |
| `amsthm` | Teoremas |
| `setspace` | Interlineado |
| `fancyhdr` | Encabezados/pies de página |
| `hyperref` | Hipervínculos (hidelinks, colores) |
| `bookmark` | Marcadores PDF |
| `titlesec` | Formato de títulos de capítulo |
| `xcolor` | Colores |

---

## Compilación

### Comando de compilación

```bash
./compilar_informe.sh
```

### Secuencia de compilación manual (si es necesario)

```bash
pdflatex INFORME_TSP.tex
biber INFORME_TSP
pdflatex INFORME_TSP.tex
pdflatex INFORME_TSP.tex
```

### Directorio de salida

El PDF compilado se genera en: `dist/INFORME_TSP.pdf`

---

## Convenciones de nombres

### Labels

| Tipo | Prefijo | Ejemplo |
|------|---------|---------|
| Capítulo | `cap:` | `cap:problematica` |
| Sección | `sec:` | `sec:objetivos` |
| Subsección | `subsec:` | `subsec:cascada` |
| Figura | `fig:` | `fig:flujo-sin-eleccia` |
| Tabla | `tab:` | `tab:costos-personal` |
| Ecuación | `eq:` | `eq:formula-roi` |
| Anexo | `anexo:` | `anexo:requerimientos-funcionales` |

### Archivos de imagen

- Usar nombres descriptivos en minúsculas
- Separar palabras con guiones bajos o guiones
- Extensiones: `.png`, `.jpg`, `.jpeg`, `.pdf`
- Ubicación: directorio `imagenes/`
