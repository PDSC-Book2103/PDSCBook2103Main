#!/bin/bash

# Compile document
lualatex -interaction=nonstopmode mainlua_fromscratch210817

# Compile nomenclature
# makeindex main.nlo -s nomencl.ist -o main.nls

# Compile index
# makeindex mmainlua_fromscratch21081

# Compile bibliography
biber mainlua_fromscratch21081

# Compile document
# lualatex mainlua

# Compile glossary
# makeglossaries mainlua

# Compile document
# lualatex mainlua
