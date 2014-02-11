#!/bin/bash

# Sync all files under build/html to another project directory
rsync -avz build/html/ ../shichao-an.github.io
