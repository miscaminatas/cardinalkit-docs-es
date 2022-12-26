![CardinalKit Logo](https://raw.githubusercontent.com/CardinalKit/.github/main/assets/ck-header-light.png#gh-light-mode-only)
![CardinalKit Logo](https://raw.githubusercontent.com/CardinalKit/.github/main/assets/ck-header-dark.png#gh-dark-mode-only)

# Documentación

Este repositorio contiene el sitio web con documentación sobre CardinalKit, próximamente su versión activa la encontrará en https://cardinalkit.org/cardinalkit-docs-es/.

## Instrucción

Para configurar este proyecto, se requiere tener instalado [Node.js](https://nodejs.org/) en sus sistema.

### Primero, ingresar en la carpeta `src` e instalar las dependiencias.
```
cd src
npm install
```
Para configurar la búsqueda de Algolia, edite el archivo .env y agregue las claves enumeradas.

### Para iniciar en modo "development" (Desarrollo)
```
npm run dev
```

El sitio se visualizará en `http://localhost:8080/cardinalkit-docs-es`.

### Para iniciar en modo "Production" (Producción)
```
npm run build
```

### Para implementar en páginas de GitHub

Desde la carpeta raíz del proyecto, ejecute

En Mac o Linux:

```
./deploy.sh
```

En Windows:

```
.\deploy.bat
```

## Creado con 
[VuePress](https://vuepress.vuejs.org/)

![Stanford Byers Center for Biodesign Logo](https://raw.githubusercontent.com/CardinalKit/.github/main/assets/ck-footer-light.png#gh-light-mode-only)
![Stanford Byers Center for Biodesign Logo](https://raw.githubusercontent.com/CardinalKit/.github/main/assets/ck-footer-dark.png#gh-dark-mode-only)
