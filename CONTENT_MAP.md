# Mapa de Contenido - EleccIA vs SIRCTGE

Este documento mapea el estado de adaptación del contenido del documento INFORME_TSP.tex, identificando qué secciones ya están adaptadas para EleccIA y cuáles aún contienen contenido del proyecto SIRCTGE (Sistema Integral de Rendición de Cuentas y Transferencia de Gestión).

---

## Leyenda de estados

| Símbolo | Significado |
|---------|-------------|
| ✓ | Adaptado a EleccIA |
| ⚠️ | Contiene contenido de SIRCTGE - necesita adaptación |
| [TODO] | Marcado explícitamente como pendiente en el código |

---

## Resumen ejecutivo

| Sección | Estado | Prioridad |
|---------|--------|-----------|
| Páginas preliminares | Parcial | Media |
| Cap I: Problemática | ✓ Completo | - |
| Cap II: Ingeniería de Requerimientos | ⚠️ SIRCTGE | Alta |
| Cap III: Diseño | ⚠️ SIRCTGE | Alta |
| Cap IV: Costos | ⚠️ SIRCTGE | Media |
| Cap V: Conclusiones | ⚠️ SIRCTGE | Alta |
| Anexo A | ⚠️ SIRCTGE | Media |

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
**Estado**: Adaptado a EleccIA
**Líneas**: 180-239

Contenido correcto sobre:
- Contexto JNE y proceso electoral 2026
- Restricciones presupuestales
- Proceso actual de calificación de inscripciones
- Propuesta del sistema EleccIA

**Figuras adaptadas**:
- `fig:flujo-sin-eleccia` - Proceso manual
- `fig:flujo-con-eleccia` - Proceso con EleccIA

### 1.2 Objetivos del trabajo ✓
**Estado**: Adaptado a EleccIA
**Líneas**: 241-264

6 objetivos específicos correctamente definidos para EleccIA.

### 1.3 Soluciones existentes ✓
**Estado**: Adaptado (contexto relevante)
**Líneas**: 266-359

Sistemas comparados:
- Proyecto Victor (Brasil)
- Pretoria (Colombia)
- Prometea (Argentina)
- Amauta Pro (Perú)
- Sistema INE (México)
- Soluciones comerciales

**Tabla adaptada**: `tab:comparacion-sistemas`

### 1.4 Metodologías ✓ (parcial)
**Estado**: Parcialmente adaptado
**Líneas**: 361-385

- Modelo en Cascada: ✓ Explicado correctamente
- Aplicación al proyecto EleccIA: [TODO]

**Acción requerida** (línea 385):
```latex
[TODO] Contenido pendiente de completar cuando se disponga del cronograma de entregables en MS Project.
```

---

## Capítulo II: Ingeniería de Requerimientos ⚠️

**Estado**: Contenido SIRCTGE - REQUIERE ADAPTACIÓN COMPLETA
**Líneas**: 390-508

### 2.1 Requerimientos funcionales ⚠️
**Líneas**: 395-462

**Contenido actual (SIRCTGE)**:
- 400+ requerimientos funcionales
- Organizados en 8 sprints
- Módulos: Mantenimientos, Configuradores, Roles, Sistemas Administrativos, Indicadores, Informes

**Cambios necesarios para EleccIA**:
1. Redefinir los sprints según metodología Cascada (no SCRUM)
2. Nuevas categorías de requerimientos:
   - Extracción de información de expedientes
   - Validación contra APIs (RENIEC, SIJE)
   - Generación de proyectos de resolución
   - Revisión y aprobación humana
   - Dashboard de monitoreo
3. Tecnologías a mencionar:
   - Procesamiento de lenguaje natural
   - Modelos de lenguaje (LLM)
   - OCR para documentos
4. Cantidad estimada de requerimientos: ~50-80 (sistema más específico)

### 2.2 Requerimientos no funcionales ⚠️
**Líneas**: 464-508

**Contenido actual (SIRCTGE)**:
- Tabla con 14 RNF
- Referencias a SIRCTGE en varios lugares

**Cambios necesarios para EleccIA**:
1. Actualizar tabla `tab:req-no-funcionales`
2. Agregar RNF específicos:
   - Precisión del modelo de IA (ej. >95% en detección)
   - Tiempo de procesamiento por expediente
   - Integración con SIJE
   - Auditoría de decisiones de IA
3. Mantener RNF genéricos relevantes (seguridad, disponibilidad)

---

## Capítulo III: Diseño ⚠️

**Estado**: Contenido SIRCTGE - REQUIERE ADAPTACIÓN COMPLETA
**Líneas**: 513-712

### 3.1 Diseño de arquitectura de software ⚠️
**Líneas**: 518-609

**Contenido actual**:
- Diagrama de contexto del SIRCTGE
- Arquitectura de 3 capas para SIRCTGE
- Angular 18 + .NET 8 + SQL Server

**Cambios necesarios para EleccIA**:

1. **Diagrama de contexto** (`fig:diagrama-contexto`):
   - Actores: Abogados JNE, Administradores, Sistema SIJE
   - Sistemas externos: RENIEC, SIJE, DECLARA+
   - Crear nueva imagen: `diagrama_contexto_eleccia.png`

2. **Arquitectura de componentes** (`fig:componentes-nivel1`):
   - Frontend: Angular (o la tecnología elegida)
   - Backend: .NET / Python (según implementación)
   - Servicios específicos:
     - Servicio de extracción (OCR + NLP)
     - Servicio de validación (APIs externas)
     - Servicio de generación de resoluciones
     - Motor de IA/LLM
   - Crear nueva imagen: `componentes_eleccia.png`

3. **Integraciones**:
   - RENIEC (validación DNI)
   - SIJE (expedientes)
   - DECLARA+ (hojas de vida)

### 3.2 Diseño de interfaz de usuario ⚠️
**Líneas**: 611-622

**Acción requerida**:
- Agregar mockups de EleccIA
- Describir flujo de usuario (abogado calificador)
- Pantallas principales: lista de expedientes, detalle con análisis IA, editor de resolución

### 3.3 Modelo de datos ⚠️
**Líneas**: 624-636

**Cambios necesarios**:
- Redefinir módulos de datos para EleccIA:
  - Expedientes electorales
  - Candidatos
  - Organizaciones políticas
  - Análisis de IA
  - Resoluciones generadas
  - Logs de auditoría

### 3.4 Diseño de pruebas ⚠️
**Líneas**: 638-650

**Cambios necesarios**:
- Pruebas de precisión del modelo de IA
- Pruebas de integración con SIJE/RENIEC
- Pruebas de carga con volumen electoral real

### 3.5 Pruebas y validaciones ⚠️
**Líneas**: 652-712

**Cambios necesarios**:
- Resultados de pruebas reales de EleccIA
- Métricas de precisión/recall del modelo
- Tiempos de procesamiento medidos

---

## Capítulo IV: Costos ⚠️

**Estado**: Contenido SIRCTGE - REQUIERE ACTUALIZACIÓN
**Líneas**: 717-827

### 4.1 Costos de personal ⚠️
**Tabla**: `tab:costos-personal`
**Líneas**: 722-758

**Cambios necesarios**:
- Actualizar roles según equipo EleccIA real
- Ajustar tarifas y tiempos
- Posibles roles adicionales:
  - Especialista en IA/ML
  - Analista legal (dominio electoral)

### 4.2 Costos de herramientas e infraestructura ⚠️
**Tabla**: `tab:costos-herramientas`
**Líneas**: 760-800

**Cambios necesarios**:
- Costos de APIs de LLM (OpenAI, Anthropic, etc.)
- Infraestructura GPU si aplica
- Licencias específicas de EleccIA

### 4.3 Resumen de costos ⚠️
**Tabla**: `tab:resumen-costos`
**Líneas**: 802-827

**Cambios necesarios**:
- Actualizar totales
- Actualizar comparación con contexto electoral (no corrupción)

---

## Capítulo V: Conclusiones ⚠️

**Estado**: Contenido SIRCTGE - REQUIERE REDACCIÓN COMPLETA
**Líneas**: 832-868

**Contenido actual**:
10 conclusiones sobre SIRCTGE (rendición de cuentas, Contraloría, etc.)

**Cambios necesarios**:
Redactar conclusiones específicas de EleccIA:

1. Cumplimiento de objetivos de EleccIA
2. Beneficios de IA en proceso electoral
3. Preservación del criterio humano (human-in-the-loop)
4. Mejoras en eficiencia de calificación
5. Escalabilidad para elecciones 2026
6. Reducción de errores en calificación
7. Lecciones aprendidas
8. Recomendaciones para implementación futura
9. Impacto en la democracia peruana
10. Modelo replicable para otros órganos electorales

---

## Anexo A: Requerimientos Funcionales ⚠️

**Estado**: Contenido SIRCTGE - REQUIERE ADAPTACIÓN COMPLETA
**Líneas**: 880-953
**Label**: `anexo:requerimientos-funcionales`

**Contenido actual**:
- Requerimientos de SIRCTGE organizados por sprints SCRUM
- Referencias a sistema de rendición de cuentas

**Cambios necesarios**:
Reescribir con requerimientos funcionales de EleccIA organizados por módulo:

1. **Módulo de Expedientes**
   - RF-EXP-001: Importar expediente desde SIJE
   - RF-EXP-002: Extraer datos de documentos adjuntos
   - etc.

2. **Módulo de Validación**
   - RF-VAL-001: Validar DNI contra RENIEC
   - RF-VAL-002: Verificar requisitos de candidatura
   - etc.

3. **Módulo de Análisis IA**
   - RF-IA-001: Analizar plan de gobierno
   - RF-IA-002: Detectar inconsistencias
   - etc.

4. **Módulo de Resoluciones**
   - RF-RES-001: Generar proyecto de resolución
   - RF-RES-002: Aplicar plantilla según resultado
   - etc.

5. **Módulo de Administración**
   - RF-ADM-001: Gestionar usuarios
   - RF-ADM-002: Configurar parámetros del modelo
   - etc.

---

## TODOs identificados en el documento

| Línea | Contenido | Prioridad |
|-------|-----------|-----------|
| 128 | `[TODO] pendiente de completar al final del curso` (Resumen) | Alta |
| 130 | `[TODO] pendiente de completar al final del curso` (Palabras clave) | Alta |
| 385 | `[TODO] Contenido pendiente de completar cuando se disponga del cronograma...` (Aplicación Cascada) | Media |

---

## Imágenes a crear/reemplazar

| Imagen actual | Nueva imagen | Descripción |
|---------------|--------------|-------------|
| `Diagrama de contexto del SIRCTGE.png` | `diagrama_contexto_eleccia.png` | Actores y sistemas de EleccIA |
| `Diagrama de componente nivel I del SIRCTGE.png` | `componentes_eleccia.png` | Arquitectura de EleccIA |
| - | `modelo_datos_eleccia.png` | Diagrama ER de EleccIA (opcional) |
| - | `mockup_lista_expedientes.png` | Pantalla principal (opcional) |
| - | `mockup_analisis_expediente.png` | Detalle con IA (opcional) |

---

## Referencias bibliográficas a agregar

Para el contexto de EleccIA, considerar agregar referencias sobre:

1. Modelos de lenguaje en aplicaciones legales
2. IA en sistemas judiciales (complementar con Victor, Pretoria, etc.)
3. Regulación de IA en procesos electorales
4. Estándares de explicabilidad en IA (XAI)
5. Documentación técnica del JNE/SIJE

---

## Plan de adaptación sugerido

### Fase 1: Fundamentos (Prioridad Alta)
1. Completar Resumen y palabras clave
2. Adaptar Cap II: Requerimientos de EleccIA
3. Adaptar Cap V: Conclusiones de EleccIA

### Fase 2: Diseño técnico (Prioridad Alta)
1. Adaptar Cap III: Arquitectura de EleccIA
2. Crear/reemplazar diagramas
3. Documentar modelo de datos

### Fase 3: Complementos (Prioridad Media)
1. Actualizar Cap IV: Costos reales
2. Completar sección 1.4.2 (cronograma)
3. Adaptar Anexo A: Requerimientos detallados

### Fase 4: Revisión final
1. Verificar consistencia de referencias
2. Actualizar índices
3. Revisar bibliografía
