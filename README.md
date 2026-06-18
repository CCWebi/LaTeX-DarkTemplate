# Portada LaTeX - con themes

Este repositorio contiene una plantilla de portada para documentos en LaTeX con distintos temas oscuros y claros, diseñada para ser fácilmente modificable, estructurada como proyecto, adaptable a diferentes necesidades y lista para compilar.

> [!IMPORTANT]
> Se usa **pdfLaTeX**.
> Si quieres comprobarlo, puedes checarlo en `Menú` > `Compiler` > `pdfLaTeX`.

## Overleaf (almost) ready

Descargar como ZIP, extraer, e importar a Overleaf los archivos dentro de la carpeta recien extraida.

La customización sucede principalmente en `config.tex`, `articleDark.cls` y `src/style.tex`. Para cambiar los logos de universidad y facultad reemplazar los archivos en `src/assets/logos_portada/` y7o cambiar la ruta en `config.tex`. De preferencia se busca que se tenga una relación de aspecto entre 1:1 a 1:1.125 y sean en formato PDF, si PDF. Puedes descargar un svg, exportarlo como PDF sin fondo y sin rasterizar, esto hará que tarde un poco menos :D.

Puedes empezar a escribir tu documento en `src/doc.tex`, Borra el contenido de ejemplo y agrega tu contenido. **¡Puedes agregar inputs de otros archivos para organizar tu documento!**

## Estructura

- `main.tex` :: Archivo principal que compila el documento.
- `config.tex` :: Archivo de configuración para personalizar la portada y otros aspectos del documento.
- `articleDark.cls` :: Clase personalizada para el documento.
- `src/` :: Directorio principal del proyecto.
  - `src/assets/` :: Directorio para recursos como imágenes, logos, etc. Agrega aquí tus imagenes y otros recursos necesarios para tu documento.
  - `src/preambulo/` :: Directorio para archivos de preámbulo, como paquetes, estilados, macros, temas, tipografías, portadas y configuraciones adicionales (*La customización de portada se realiza en `config.tex`*).
    - `src/preambulo/portadas/` :: Directorio para portadas predefinidas. Puedes agregar tus propias portadas siguiendo la estructura de las existentes y agregarla en `main.tex`.
  - `src/proyecto/` :: Directorio para el contenido del documento. Aquí es donde escribirás tu documento, puedes organizarlo en subdirectorios y usar `\input{}` para incluirlos en `src/proyecto/doc.tex`. O reinventar la estructura de archivos como mejor te convenga, el input a `src/proyecto/doc.tex` se encunetra en `main.tex`.

## Estilo

En `config.tex` se encuentran las variables para personalizar la portada, header, estilos, selección de temas, tipografías, etc.

Puedes agregar tus propias variables, temas y tipografías. Se recomienda seguir la estructura de las variables ya existentes para mantener la organización del proyecto.

### Temas

Los siguientes temas predefinidos están disponibles para su uso. Los temas son independientes pero son estéticamente basados en temas populares de editores de código, adaptados para documentos LaTeX. Las referencias originales no son de mi autoría, solo los adapté para este proyecto, para obtener más información, se puede acceder a las siguientes referencias.

Se cuentan con los siguientes temas predefinidos:

- Default (default) | Básicos con colores claros.
- Soft Light colors (soft) | Básicos con colores claros más suaves para la vista.
- Darkcula (darkcula) :: Dracula MIT Licence | [https://draculatheme.com](https://draculatheme.com) / [https://github.com/dracula/dracula-theme](https://github.com/dracula/dracula-theme)
- TwoDark (twodark) :: OneDark MIT Licence & OneDark for Vim MIT Licence | [github.com/one-dark/github-one-dark-theme](https://github.com/one-dark/github-one-dark-theme) [https://github.com/joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
- AyuhDark (darknat) :: AyuDark MIT Licence | [github.com/ayu-theme/ayu-colors?tab=readme-ov-file](https://github.com/ayu-theme/ayu-colors?tab=readme-ov-file)
- Osaka Moon (osakamoon) :: TokyoNight MIT Licence | [github.com/tokyo-night/tokyo-night-vscode-theme](https://github.com/tokyo-night/tokyo-night-vscode-theme)
- MeawDark (meaw) :: MeawDark MIT Licence | [https://catppuccin.com](https://catppuccin.com)

Si quieres agregar tus propios temas, puedes agregar una opción en `src/preambulo/temas/` siguiendo la estructura de los temas ya existentes, y agregar la opción en `config.tex` para seleccionarlo. Si quieres sumarlo y contribuirlo al proyecto, puedes hacer un pull request con tu tema para que otros puedan usarlo. [Contribuye](#contribuye).

### Tipografía

Se cuenta con distintas tipografías predefinidas para su uso, cada una con su comando de selección. Las referencias para su uso son tomadas de (The LaTeX Font Catalogue)[https://tug.org/FontCatalogue/allfonts.html]. Se pueden agregar más tipografías siguiendo la estructura de las ya existentes, y agregando la opción en `config.tex` para seleccionarla. Si quieres sumarlo y contribuirlo al proyecto, puedes hacer un pull request con tu tipografía para que otros puedan usarla. [Contribuye](#contribuye).

- Computer Moderm :: default
- Fira Mono :: firamono
- Fira Sans :: firasans
- Roboto :: roboto
- Latin Modern :: lmodern
- Source Sans Pro :: sourcesp
- Montserrat :: montserrat

### Elementos

El archivo `src/proyecto/doc.tex` contiene elementos de ejemplo para mostrar el estilo de los temas, como títulos, secciones, tablas, imágenes, etc. Puedes modificarlo o eliminarlo según tus necesidades.

Todo listo para ser modificado.

## Documentación

Se encuentra con una documentación ligera para su uso.

## Contribuye

Si quieres contribuir al proyecto, puedes hacer un pull request con tus cambios o mejoras. Si quieres agregar un tema, una tipografía, o cualquier otra mejora, no dudes en hacerlo. Si tienes dudas o sugerencias, puedes abrir un issue para discutirlo.

## Ejemplo de uso

Con las configuraciones por defecto, el documento se verá así:
[Ejemplo de uso](Portada_con_dark_themes.pdf)

> [!TIP]
> Para dudas [contáctame](https://github.com/CCWebi).
