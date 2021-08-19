#!/bin/bash

# Compile document
lualatex -interaction=nonstopmode mainlua

# Compile nomenclature
makeindex main.nlo -s nomencl.ist -o main.nls

# Compile index
makeindex mainlua

# Compile bibliography
biber mainlua

# Compile document
lualatex mainlua

# Compile glossary
makeglossaries mainlua

# Compile document
lualatex mainlua
