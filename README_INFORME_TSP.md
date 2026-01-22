# Trabajo de Suficiencia Profesional - PUCP

## Implementación de un Sistema de Rendición de Cuentas y Transferencia de Gestión (SIRCTGE)

**Autor:** Jayro Guerreros Echia
**Asesor:** Felix Melchor Santos Lopez
**Universidad:** Pontificia Universidad Católica del Perú
**Facultad:** Ciencias e Ingeniería
**Programa:** Ingeniería Mecatrónica
**Fecha:** Lima, 15 de julio de 2025

---

## Estructura del Proyecto

```
learning-latex/
├── INFORME_TSP.tex           # Documento LaTeX principal
├── referencias.bib           # Base de datos bibliográfica (formato BibTeX)
├── compilar_informe.sh       # Script de compilación automática
├── INFORME_TSP.pdf           # Documento PDF generado (49 páginas)
├── imagenes/                 # Carpeta con todas las figuras
│   ├── image1.jpeg           # Logo PUCP (portada)
│   ├── Proceso actual de Rendición de cuentas...png
│   ├── Proceso nuevo de rendición de cuentas...png
│   ├── Interfaz principal de Metas...png
│   ├── Convocatoria a la población...png
│   ├── Flujo de un proceso utilizando SCRUM.png
│   ├── Diagrama de módulos del SIRCTGE.png
│   ├── Diagrama de contexto del SIRCTGE.png
│   └── Diagrama de componente nivel I del SIRCTGE.png
└── README_INFORME_TSP.md     # Este archivo
```

---

## Características del Documento

### Estructura Académica Completa

El documento sigue la estructura estándar para trabajos de suficiencia profesional:

1. **Portada** - Con logo institucional y datos completos
2. **Páginas preliminares** (numeración romana i, ii, iii...)
   - Resumen
   - Dedicatoria
   - Agradecimientos
   - Índice general
   - Índice de tablas
   - Índice de figuras
3. **Contenido principal** (numeración arábiga 1, 2, 3...)
   - Capítulo I: Problemática
   - Capítulo II: Ingeniería de Requerimientos
   - Capítulo III: Diseño
   - Capítulo IV: Costos
   - Conclusiones
4. **Bibliografía** (formato IEEE con citas numéricas [1], [2]...)
5. **Anexos** (Lista de requerimientos funcionales)

### Características Técnicas LaTeX

- **Clase de documento:** `book` (12pt, A4, twoside)
- **Idioma:** Español con babel
- **Márgenes:** 3cm izquierdo (encuadernación), 2.5cm otros
- **Interlineado:** 1.5 espacios (onehalfspacing)
- **Bibliografía:** BibLaTeX con estilo IEEE
- **Hipervínculos:** Completamente funcionales (Ctrl+Click)
- **Referencias cruzadas:** 22 referencias \ref{} a figuras, tablas, secciones
- **Figuras:** 8 figuras numeradas automáticamente
- **Tablas:** 5 tablas profesionales con booktabs
- **Citas:** 11 citas bibliográficas en formato IEEE [1]-[12]

### Paquetes LaTeX Utilizados

```latex
% Esenciales
inputenc, babel, geometry, fontenc

% Bibliografía
biblatex (backend=biber, style=ieee)

% Gráficos
graphicx, float, caption, subcaption

% Tablas
booktabs, longtable, multirow, tabularx

% Formato
setspace, fancyhdr, titlesec, xcolor

% Hipervínculos
hyperref, bookmark
```

---

## Cómo Compilar el Documento

### Opción 1: Script Automático (Recomendado)

```bash
./compilar_informe.sh
```

Este script ejecuta automáticamente las 4 pasadas necesarias:
1. pdflatex (primera pasada)
2. biber (procesar bibliografía)
3. pdflatex (segunda pasada)
4. pdflatex (tercera pasada - referencias finales)

### Opción 2: Compilación Manual

```bash
pdflatex INFORME_TSP.tex
biber INFORME_TSP
pdflatex INFORME_TSP.tex
pdflatex INFORME_TSP.tex
```

### Opción 3: Editores LaTeX

Si usas **Overleaf**, **TeXstudio**, **TeXmaker** o similar:
1. Abre `INFORME_TSP.tex`
2. Configura el compilador a **pdfLaTeX**
3. Configura la bibliografía a **Biber**
4. Presiona el botón de compilar

---

## Contenido del Documento

### Capítulo I: Problemática

- Descripción detallada del problema de rendición de cuentas en el Perú
- Datos estadísticos sobre corrupción (S/ 24,000 millones perdidos en 2023)
- Diagramas de proceso actual vs. proceso propuesto con SIRCTGE
- Objetivos generales y específicos del proyecto
- Análisis comparativo de soluciones existentes (OpenGov, Partícipes, Decidim, SISREC, FONAE)
- Metodología SCRUM aplicada al proyecto

### Capítulo II: Ingeniería de Requerimientos

- Más de 400 requerimientos funcionales organizados por sprint
- 14 requerimientos no funcionales críticos
- Categorización por módulos: Autenticación, Configuradores, Roles, Sistemas Administrativos, Indicadores, Informes

### Capítulo III: Diseño

- Arquitectura de software (diagrama de contexto y componentes)
- Stack tecnológico: Angular 18 (frontend) + .NET 8 (backend) + SQL Server 2022
- Diseño de interfaces y experiencia de usuario
- Estrategia de pruebas multinivel
- Resultados de pruebas (73% cobertura, 500 usuarios concurrentes)

### Capítulo IV: Costos

- Costos de personal: S/ 490,500.00
- Costos de herramientas e infraestructura: S/ 31,410.00
- **Costo total:** S/ 521,910.00
- Análisis de viabilidad económica

### Conclusiones

10 conclusiones principales que demuestran:
- Viabilidad técnica y económica del proyecto
- Impacto social esperado en transparencia y lucha contra la corrupción
- Cumplimiento de todos los objetivos específicos
- Replicabilidad del modelo para otros sistemas gubernamentales

---

## Referencias Bibliográficas

El documento incluye 14 referencias en formato IEEE:

1. Constitución Política del Perú (1993)
2. Ley Orgánica del Sistema Nacional de Control (2018)
3. Contraloría General de la República (2020)
4. Infobae - Pérdidas por corrupción (2024)
5. El Objetivo - Impacto de corrupción (2024)
6. Defensoría del Pueblo - Casos de corrupción (2024)
7. OpenGov - Plataforma ERP
8-11. Soluciones internacionales (Partícipes, Decidim, SISREC, FONAE)
12-14. Metodología SCRUM

---

## Figuras Incluidas

| Número | Título | Archivo |
|--------|--------|---------|
| 1 | Proceso actual de Rendición de cuentas | `Proceso actual de Rendición...png` |
| 2 | Proceso nuevo con SIRCTGE | `Proceso nuevo de rendición...png` |
| 3 | Interfaz Partícipes Mendoza | `Interfaz principal de Metas...png` |
| 4 | Convocatoria presupuestos participativos | `Convocatoria a la población...png` |
| 5 | Flujo SCRUM | `Flujo de un proceso utilizando SCRUM.png` |
| 6 | Diagrama de módulos SIRCTGE | `Diagrama de módulos del SIRCTGE.png` |
| 7 | Diagrama de contexto SIRCTGE | `Diagrama de contexto del SIRCTGE.png` |
| 8 | Diagrama de componente nivel I | `Diagrama de componente nivel I...png` |

---

## Tablas Incluidas

1. Cuadro comparativo de soluciones existentes
2. Requerimientos no funcionales del SIRCTGE
3. Costos de personal del proyecto
4. Costos de herramientas e infraestructura
5. Resumen consolidado de costos

---

## Características Avanzadas

### Referencias Cruzadas Funcionales

Todas las referencias internas funcionan con hipervínculos:
- Clic en "Figura 2" → salta a la figura
- Clic en "Tabla 3" → salta a la tabla
- Clic en "Sección 3.2" → salta a esa sección
- Clic en "[5]" → salta a la bibliografía

### Metadatos PDF

El documento incluye metadatos completos:
- Título del trabajo
- Autor
- Palabras clave
- Asunto

Estos metadatos aparecen en las propiedades del PDF y facilitan su indexación.

### Accesibilidad

- Numeración automática de secciones
- Índices generados automáticamente
- Hipervínculos en color (pero sin cajas molestas)
- Estructura jerárquica clara

---

## Requisitos del Sistema

### Software Necesario

- **TeX Live 2020+** o **MiKTeX**
- **Biber** (incluido en distribuciones modernas)
- Paquetes LaTeX: biblatex, babel, graphicx, booktabs, hyperref, etc.

### Instalación en Ubuntu/Debian

```bash
sudo apt-get install texlive-full biber
```

### Instalación en Windows

Descargar e instalar **MiKTeX** desde: https://miktex.org/

---

## Resolución de Problemas

### Las referencias bibliográficas no aparecen

**Solución:** Ejecutar biber después de la primera compilación:
```bash
pdflatex INFORME_TSP.tex
biber INFORME_TSP
pdflatex INFORME_TSP.tex
```

### Las referencias cruzadas muestran "??"

**Solución:** Compilar dos veces consecutivas:
```bash
pdflatex INFORME_TSP.tex
pdflatex INFORME_TSP.tex
```

### Las imágenes no aparecen

**Solución:** Verificar que la carpeta `imagenes/` esté en el mismo directorio que el .tex

### Warning: "headheight is too small"

Esto es solo una advertencia cosmética que no afecta el documento. Puede ignorarse.

---

## Personalización

### Cambiar el interlineado

```latex
% En el preámbulo, modificar:
\onehalfspacing   % Actual: 1.5 espacios
% o cambiar a:
\singlespacing    % 1.0 espacios
\doublespacing    % 2.0 espacios
```

### Cambiar los márgenes

```latex
% En el preámbulo, modificar:
\usepackage[left=3cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
```

### Cambiar el estilo de citas

```latex
% Para cambiar de IEEE a APA, modificar:
\usepackage[backend=biber,style=apa]{biblatex}
```

---

## Estadísticas del Documento

- **Páginas totales:** 49
- **Capítulos:** 4 principales + Conclusiones
- **Secciones:** 26
- **Figuras:** 8
- **Tablas:** 5
- **Referencias bibliográficas:** 14
- **Referencias cruzadas:** 22
- **Citas bibliográficas:** 11
- **Palabras aproximadas:** ~12,000
- **Tamaño PDF:** 667 KB

---

## Licencia

Este documento es propiedad intelectual del autor y la Pontificia Universidad Católica del Perú.

---

## Contacto

**Autor:** Jayro Guerreros Echia
**Asesor:** Felix Melchor Santos Lopez
**Universidad:** Pontificia Universidad Católica del Perú
**Facultad:** Ciencias e Ingeniería

---

## Historial de Versiones

| Versión | Fecha | Descripción |
|---------|-------|-------------|
| 1.0 | 2025-07-15 | Versión inicial completa |
| 1.1 | 2026-01-22 | Conversión a LaTeX con mejoras tipográficas |

---

**Última actualización:** 22 de enero de 2026
