#!/bin/bash

git init
gibo Node JetBrains >> .gitignore
licgen MIT tadamak
touch README.md
mkdir test
mkdir lib
mkdir src
init-package-json
git add .
