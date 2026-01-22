#!/bin/bash
# ============================================
# Script para compilar INFORME_TSP.tex
# Salida: dist/INFORME_TSP.pdf
# ============================================

set -e

# Configuración
OUTPUT_DIR="dist"
MAIN_FILE="INFORME_TSP"

echo "=========================================="
echo "Compilando $MAIN_FILE.tex"
echo "Salida: $OUTPUT_DIR/"
echo "=========================================="
echo ""

# Crear directorio de salida
mkdir -p "$OUTPUT_DIR"

# Copiar archivos necesarios al directorio de salida
cp referencias.bib "$OUTPUT_DIR/"

echo "[1/4] Primera compilación con pdflatex..."
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "✓ Primera compilación completada"
else
    echo "✗ Error en primera compilación"
    exit 1
fi

echo "[2/4] Procesando bibliografía con biber..."
cd "$OUTPUT_DIR"
biber "$MAIN_FILE" > /dev/null 2>&1
cd ..

if [ $? -eq 0 ]; then
    echo "✓ Bibliografía procesada"
else
    echo "✗ Error procesando bibliografía"
    exit 1
fi

echo "[3/4] Segunda compilación con pdflatex..."
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "✓ Segunda compilación completada"
else
    echo "✗ Error en segunda compilación"
    exit 1
fi

echo "[4/4] Tercera compilación con pdflatex..."
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "✓ Tercera compilación completada"
else
    echo "✗ Error en tercera compilación"
    exit 1
fi

echo ""
echo "=========================================="
echo "✓ Compilación exitosa"
echo "=========================================="
echo ""
echo "Archivo generado: $OUTPUT_DIR/$MAIN_FILE.pdf"
ls -lh "$OUTPUT_DIR/$MAIN_FILE.pdf"
echo ""
if command -v pdfinfo &> /dev/null; then
    echo "Páginas:"
    pdfinfo "$OUTPUT_DIR/$MAIN_FILE.pdf" | grep "Pages:"
    echo ""
fi
