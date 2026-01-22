#!/bin/bash
# ============================================
# Script para compilar la tesis
# Ejecuta: ./compilar.sh
# Salida: dist/tesis.pdf
# ============================================

set -e

# Directorio de salida
OUTPUT_DIR="dist"
MAIN_FILE="tesis"

# Crear directorio de salida si no existe
mkdir -p "$OUTPUT_DIR"

echo "Compilando tesis..."
echo "Salida: $OUTPUT_DIR/"
echo ""

# Primera pasada de pdflatex
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"

# Copiar .bib al directorio de salida para biber
cp referencias.bib "$OUTPUT_DIR/"

# Procesar bibliografía con biber (desde el directorio de salida)
cd "$OUTPUT_DIR"
biber "$MAIN_FILE"
cd ..

# Segunda y tercera pasada para resolver referencias
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"

echo ""
echo "====================================="
echo "Compilación completada!"
echo "Archivo generado: $OUTPUT_DIR/$MAIN_FILE.pdf"
echo "====================================="
