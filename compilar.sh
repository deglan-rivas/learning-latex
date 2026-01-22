#!/bin/bash
# ============================================
# Script para compilar la tesis
# Ejecuta: ./compilar.sh
# ============================================

echo "Compilando tesis..."

# Primera pasada de pdflatex
pdflatex -interaction=nonstopmode tesis.tex

# Procesar bibliografía con biber
biber tesis

# Segunda y tercera pasada para resolver referencias
pdflatex -interaction=nonstopmode tesis.tex
pdflatex -interaction=nonstopmode tesis.tex

echo ""
echo "¡Compilación completada!"
echo "Archivo generado: tesis.pdf"
