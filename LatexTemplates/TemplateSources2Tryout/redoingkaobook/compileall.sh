#!/bin/bash

# Compile document
xelatex -interaction=nonstopmode rmain

# Compile nomenclature
# makeindex rmain.nlo -s nomencl.ist -o rmain.nls

# Compile index
# makeindex rmain

# Compile bibliography
# biber rmain

# Compile document
# xelatex rmain

# Compile glossary
# makeglossaries rmain

# Compile document
# xelatex rmain
