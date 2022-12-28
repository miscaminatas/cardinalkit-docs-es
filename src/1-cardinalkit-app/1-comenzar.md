---
home: false
title: Crear una nueva App CardinalKit iOS
footer: Stanford Byers Center for Biodesign
order: 1
---

# Crear una Nueva App CardinalKit iOS

<img src="./images/doctors.svg" alt="drawing" width="250"/><br />

## 1. Instalar Xcode y Cocoapods

Las apps iOS son construídas en Xcode nativo, buscar en el "Apple Mac App Store". Descargar la última versión de Xcode disponible, si no lo has hecho ya, recomendamos tener al menos Xcode v13.

::: tip

Para encontrar su versión de Xcode, puede escribir `system_profiler SPDeveloperToolsDataType` en su terminal.
:::

Tendrá que instalar [Cocoapods](https://cocoapods.org/), un administrador de paquetes para aplicaciones iOS, ejecutando el siguiente comando en su terminal.

```
sudo gem install cocoapods
```

Si tiene instalado homebrew en su Mac, puede ejecutar:

```
brew install cocoapods
```

## 2. Descargar el proyecto

El proyecto de código abierto está disponible [en nuestro Github](https://github.com/cardinalkit/cardinalkit). Si está familiarizado con Git, puede clonar el proyecto en su Mac, en su terminal de la siguiente manera:

```
git clone https://github.com/CardinalKit/CardinalKit.git
```
Otra alternativa, es descargar el proyecto como un archivo zip, haciendo clic en "Code" > "Download Zip". Sino funciona, [click acá](https://github.com/CardinalKit/CardinalKit/archive/main.zip). Descarga directamente.

<img src="./images/github.png" alt="drawing" width="750"/>

## 3. Instalar Dependencias

En su terminal, diríjase a la carpeta donde se descargaron los archivos de su proyecto. Allí cambie a la carpeta 'CardinalKit-Example', donde se encuentra la aplicación y ejecute 'pod install' para instalar dependencias a través de CocoaPods. Este proceso puede tardar unos minutos.
```
cd CardinalKit-Example
pod install
```

## 4. Abrir el proyecto en Xcode

Ahora abra la carpeta del proyecto CardinalKit en Finder. 

Encuentre "CardinalKit.xcworkspace" un archivo ubicado en la carpeta "CardinalKit-Example". Debería ver algo como esto. Abrir el archivo "CardinalKit.xcworkspace". Xcode debería debería iniciarse automáticamente con el proyecto abierto. Esta es una aplicación demo que deberá personalizar para satisfacer sus necesidades. Xcode 
comenzará a indexar su proyecto y mostrará | Procesando archivos durante unos minutos en la barra superior | Indexing. No es necesario esperar a que se complete este proceso para continuar con esta guía.

<img src="./images/folder.png" alt="drawing" width="450"/>

Si aparece una ventana emergente que indica que abrió un archivo descargado on line, seleccione "Abrir".

::: tip
En algún momento durante este proceso, el proyecto puede solicitar una parte de su "keychain" con una cadena de ventanas emergentes intrusivas. En este caso, escriba su contraseña y haga clic en "Permitir siempre" ("Always Allow"). Xcode y este proyecto son completamente locales, por lo que es seguro.
:::

<img src="./images/downloaded.png" alt="drawing" width="450"/>

## 5.Configurar Proyecto

Haga clic en el proyecto raíz principal en la barra lateral y cambie el ID y el equipo del paquete de iOS para que coincida con su proyecto. 

Recuerde el ID del paquete para más adelante, ya que será necesario para conectar su base de datos a la aplicación. Debe ser del formato "com.[TEAM-NAME].[PROJECT-NAME]". Anote este ID de paquete para más adelante, ya que será crucial para configurar el componente de base de datos de la aplicación..

<img src="./images/bundle.png" alt="drawing" width="450"/>

::: tip
Si recibe un mensaje de estado que dice "No se puede iniciar sesión con la cuenta'[YOUR EMAIL]'" o "No se encontraron perfiles para '[YOUR BUNDLE ID]'", no se preocupe, ya que su aplicación aún debe compilarse y debe continuar con esta guía.
:::

Una vez que esté completo, su página "Firma y capacidades" ("Signing and Capabilities") debería verse así (con los nombres de su equipo (Team) y proyecto (Bundle Identifier):

<img src="./images/updated_bundle.png" alt="drawing" width="450"/><br />

## 6. Esperea a que se complete la reindexación

Xcode tarda un tiempo en abrir un proyecto. Espere hasta que Xcode termine de indexar el proyecto. En la parte superior de Xcode, habrá una barra de progreso de "color azul" claro que lo indica. Una vez que se completa y no aparecen errores en "color rojo", podemos ejecutar el proyecto. Esto puede tomar de 5 a 10 minutos.

<img src="./images/indexing.png" alt="drawing" width="750"/>

## 7. Prueba tu App

Especifique el destino de la implementación. Seleccione su teléfono (si está enchufado) o elija un dispositivo para simular (recomendamos iPhone 11 e iOS 14 o superior). Presione el botón "Play", que se muestra a continuación, para ejecutar la aplicación en el simulador. La primera vez que crea la aplicación, tardará de 5 a 10 minutos debido a que tiene que cargar todos los "Frameworks" por primera vez.

Cuando el simulador se inicia y abre la aplicación, es posible que se encuentre con una pantalla blanca durante unos segundos o un minuto. Esto es normal para el simulador en la primera ejecución de la aplicación. Su proyecto puede mostrar varias advertencias indicadas por un triángulo amarillo "⚠️" pero eso está bien.

<img src="./images/set_target.png" alt="drawing" width="750"/>

Si su aplicación ya está en funcionamiento, continúe con la <a href="/cardinalkit-docs-es/1-cardinalkit-app/2-config.html">siguiente sección</a> para configurar la infraestructura de la nube para su aplicación.
