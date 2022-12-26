#!/usr/bin/env sh

# Abortar con errores
set -e

# Construir
npm run build

# Cambie a la carpeta de compilación
cd src/.vuepress/dist

# si está implementando en un dominio personalizado
# echo 'www.sudomio.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# Si está implementando en https://<NOMBRE-USUARIO>.github.io
# git push -f git@github.com:<NOMBRE-USUSARIO>/<NOMBRE-USUARIO>.github.io.git master

# Si está implementando en https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:CardinalKit/cardinalkit-docs.git main:gh-pages

cd -
