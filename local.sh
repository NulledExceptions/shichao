#!/bin/bash

# For build
sphinx-build -a -b html -d build/doctrees source build/html

# Sync all files under build/html to another project directory
rsync -avz build/html/ ../shichao-an.github.io
