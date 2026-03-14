# Mapa de Contenido - EleccIA

Este documento mapea el estado del contenido del documento INFORME_TSP.tex para el sistema EleccIA.

---

## Leyenda de estados

| Símbolo | Significado |
|---------|-------------|
| ✓ | Contenido completado |
| [TODO] | Marcado explícitamente como pendiente en el código |
| [PENDIENTE] | Capítulo/sección por crear |

---

## Resumen ejecutivo

| Sección | Estado | Prioridad |
|---------|--------|-----------|
| Páginas preliminares | Parcial | Media |
| Cap I: Problemática | ✓ Completo | - |
| Cap II: Ingeniería de Requerimientos | [PENDIENTE] | Alta |
| Cap III: Diseño | [PENDIENTE] | Alta |
| Cap IV: Costos | 🟡 Estructura creada (datos pendientes) | Media |
| Cap V: Conclusiones | [PENDIENTE] | Alta |
| Anexo A | [PENDIENTE] | Media |

---

## Páginas preliminares

### Resumen [TODO]
**Estado**: Pendiente de completar
**Líneas**: 125-130
**Contenido actual**:
```latex
[TODO] pendiente de completar al final del curso
\textbf{Palabras clave:} [TODO] pendiente de completar al final del curso.
```
**Acción requerida**: Redactar resumen ejecutivo del sistema EleccIA (150-300 palabras)

### Dedicatoria ✓
**Estado**: Completo
**Líneas**: 135-143

### Agradecimientos ✓
**Estado**: Completo
**Líneas**: 148-155

---

## Capítulo I: Problemática ✓

### 1.1 Descripción del problema ✓
**Estado**: Completo
**Líneas**: 180-239

Contenido incluido:
- Contexto JNE y proceso electoral 2026
- Restricciones presupuestales
- Proceso actual de calificación de inscripciones
- Propuesta del sistema EleccIA

**Figuras**:
- `fig:flujo-sin-eleccia` - Proceso manual
- `fig:flujo-con-eleccia` - Proceso con EleccIA

### 1.2 Objetivos del trabajo ✓
**Estado**: Completo
**Líneas**: 241-264

6 objetivos específicos definidos para EleccIA.

### 1.3 Soluciones existentes ✓
**Estado**: Completo
**Líneas**: 266-359

Sistemas comparados:
- Proyecto Victor (Brasil)
- Pretoria (Colombia)
- Prometea (Argentina)
- Amauta Pro (Perú)
- Sistema INE (México)
- Soluciones comerciales

**Tabla**: `tab:comparacion-sistemas`

### 1.4 Metodologías ✓ (parcial)
**Estado**: Parcialmente completo
**Líneas**: 361-385

- Modelo en Cascada: ✓ Explicado correctamente
- Aplicación al proyecto EleccIA: [TODO]

**Acción requerida** (línea 385):
```latex
[TODO] Contenido pendiente de completar cuando se disponga del cronograma de entregables en MS Project.
```

---

## Capítulos por crear

### Capítulo II: Ingeniería de Requerimientos [PENDIENTE]

**Contenido a desarrollar**:

1. **Requerimientos funcionales de EleccIA**
   - Módulo de Expedientes (importación desde SIJE)
   - Módulo de Extracción (OCR, NLP)
   - Módulo de Validación (RENIEC, requisitos legales)
   - Módulo de Análisis IA (detección de inconsistencias)
   - Módulo de Resoluciones (generación automática)
   - Módulo de Revisión (human-in-the-loop)
   - Módulo de Dashboard (métricas y monitoreo)

2. **Requerimientos no funcionales**
   - Precisión del modelo de IA (>95%)
   - Tiempo de procesamiento por expediente
   - Integración con SIJE
   - Seguridad y auditoría
   - Disponibilidad

**Labels sugeridos**:
- `cap:requerimientos`
- `sec:req-funcionales`
- `sec:req-no-funcionales`
- `tab:req-no-funcionales`

---

### Capítulo III: Diseño [PENDIENTE]

**Contenido a desarrollar**:

1. **Arquitectura de software**
   - Diagrama de contexto de EleccIA
   - Diagrama de componentes
   - Tecnologías: Angular/React + .NET/Python + PostgreSQL/SQL Server

2. **Diseño de interfaz de usuario**
   - Mockups de pantallas principales
   - Flujo de usuario (abogado calificador)

3. **Modelo de datos**
   - Expedientes, candidatos, organizaciones políticas
   - Análisis de IA, resoluciones

4. **Diseño de pruebas**
   - Pruebas de precisión del modelo
   - Pruebas de integración con SIJE/RENIEC

5. **Pruebas y validaciones**
   - Resultados de pruebas reales

**Labels sugeridos**:
- `cap:diseno`
- `sec:arquitectura`
- `sec:diseno-interfaz`
- `sec:modelo-datos`
- `sec:diseno-pruebas`
- `sec:pruebas-validaciones`
- `fig:diagrama-contexto`
- `fig:componentes-nivel1`

---

### Capítulo IV: Costos 🟡 ESTRUCTURA CREADA

**Estado**: Tablas con datos placeholder (S/ 0.00) — rellenar con datos reales.

**Secciones**:
1. **4.1 Costos de Recursos Humanos** — `sec:costos-rrhh` / `tab:costos-rrhh`
2. **4.2 Costos de Software y Tecnologías** — `sec:costos-software` / `tab:costos-software`
3. **4.3 Costos de Infraestructura Tecnológica** — `sec:costos-infraestructura` / `tab:costos-infraestructura`
4. **4.4 Costos de Soporte y Mantenimiento** — `sec:costos-soporte` / `tab:costos-soporte`
5. **4.5 Resumen Total de Costos** — `sec:costos-total` / `tab:costos-total`

---

### Capítulo V: Conclusiones [PENDIENTE]

**Contenido a desarrollar**:

Conclusiones específicas de EleccIA:
1. Cumplimiento de objetivos
2. Beneficios de IA en proceso electoral
3. Preservación del criterio humano (human-in-the-loop)
4. Mejoras en eficiencia de calificación
5. Escalabilidad para elecciones 2026
6. Reducción de errores
7. Lecciones aprendidas
8. Recomendaciones futuras
9. Impacto en la democracia peruana
10. Modelo replicable

**Label sugerido**:
- `cap:conclusiones`

---

### Anexo A: Requerimientos Funcionales [PENDIENTE]

**Contenido a desarrollar**:

Lista detallada de requerimientos funcionales de EleccIA organizados por módulo:

1. **Módulo de Expedientes** (RF-EXP-xxx)
2. **Módulo de Validación** (RF-VAL-xxx)
3. **Módulo de Análisis IA** (RF-IA-xxx)
4. **Módulo de Resoluciones** (RF-RES-xxx)
5. **Módulo de Administración** (RF-ADM-xxx)

**Label sugerido**:
- `anexo:requerimientos-funcionales`

---

## TODOs identificados en el documento

| Línea | Contenido | Prioridad |
|-------|-----------|-----------|
| 128 | `[TODO] pendiente de completar al final del curso` (Resumen) | Alta |
| 130 | `[TODO] pendiente de completar al final del curso` (Palabras clave) | Alta |
| 385 | `[TODO] Contenido pendiente de completar cuando se disponga del cronograma...` (Aplicación Cascada) | Media |

---

## Imágenes existentes

| Imagen | Descripción | Usada en |
|--------|-------------|----------|
| `image1.jpeg` | Logo PUCP | Portada |
| `flujo_sin_eleccia.png` | Proceso manual | fig:flujo-sin-eleccia |
| `flujo_con_eleccia.png` | Proceso con EleccIA | fig:flujo-con-eleccia |

## Imágenes a crear

| Imagen sugerida | Descripción | Para capítulo |
|-----------------|-------------|---------------|
| `diagrama_contexto_eleccia.png` | Actores y sistemas externos | III - Diseño |
| `componentes_eleccia.png` | Arquitectura de componentes | III - Diseño |
| `modelo_datos_eleccia.png` | Diagrama ER (opcional) | III - Diseño |
| `mockup_lista_expedientes.png` | Pantalla principal (opcional) | III - Diseño |

---

## Plan de desarrollo sugerido

### Fase 1: Contenido crítico (Prioridad Alta)
1. Completar Resumen y palabras clave
2. Crear Cap II: Requerimientos de EleccIA
3. Crear Cap V: Conclusiones de EleccIA

### Fase 2: Diseño técnico (Prioridad Alta)
1. Crear Cap III: Arquitectura de EleccIA
2. Crear diagramas necesarios
3. Documentar modelo de datos

### Fase 3: Complementos (Prioridad Media)
1. Crear Cap IV: Costos reales
2. Completar sección 1.4.2 (cronograma)
3. Crear Anexo A: Requerimientos detallados

### Fase 4: Revisión final
1. Verificar consistencia de referencias
2. Actualizar índices
3. Revisar bibliografía
