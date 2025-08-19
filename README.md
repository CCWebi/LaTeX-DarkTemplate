# Portada LaTeX - dark themed

> [!IMPORTANT]
> Se usa **LuaLaTeX**.

> [!CAUTION]
> Se tiene un error al compilar `Missing \begin{document}.` por ejecutar código de Lua antes de empezar el documento. Proceder sin `halt-on-error`/`Stop on first error`. Se evitó suprimir el error para no interferir con errores en contenido.

## Overleaf (almost) ready

Es necesario que el compilador sea **LuaLaTeX**.
Se puede cambiar en `Overleaf` desde Menú > Compiler y seleccionar LuaLatex (pdfLaTeX está por defecto).

Se prefiere cambiar los logos de universidad y facultad con los nombres en la carpeta `resources/`. De preferencia que se tenga una relación de aspecto entre 1:1 a 1:1.125.

```bash
./resources/Logo_Universidad
./resources/Logo_Facultad
```

En el docuemnto `datos_portada_ui.lua` se deben cambiar los datos de la portada.
Es posible usar ese u otro archivo `*.lua` para trabajar con datos dinámicos antes de compilar.
Las imágenes default son de dominio público por Wikimedia Commons.

## Resultados

- [Tema 1 - Portada pequeña](./output_theme1_portada-cuarto.pdf)
- [Tema 2 - Portada completa](./output_theme2_portada-completa.pdf)

## Estructura

- `docUI/` : Carpeta con datos de UI como temas y colores; y datos del preámbulo como paquetes, comandos.
- `resources/` : Carpeta dedicada a imágenes.
- `sections/` : Carpeta destinada a contener `*.tex` con secciones o contenido.

## Temas

Cuenta con cuatro temas en `/docUI/datos_portada_ui`:

(Nombre (código a escribir en `\tema`))

- Darkcula (darkcula)
- TwoDark (twodark)
- AyuhDark (ayuhdark)
- Osaka Night (osakanight)

Es posible cambiar los temas en `main.tex` en `\newcommand{\tema}{<TEMA>}` y crear nuevos directo en `datos_portada_ui.lua`.

Si se busca cambiar la tipografía (a una dentro del documento), es necesario descomentar las líneas bajo el nombre de la tipografía, comentar la línea bajo `% Default` y descomentar líneas del estilo como `% \sloppy % Fira Mono` a `\sloppy % Fira Mono` i.e. `<commando> % <Tipografía>`. Para más información visitar [Font Catalogue](https://tug.org/FontCatalogue/allfonts.html)

## Elementos

Tiene portada de hoja entera y de cuarto de hoja, es podible carmbiarlas en `main.tex`, alternando el comentado de la línea:

```latex
%------------------------------------------------------------
    \thispagestyle{empty} % Sin header y footer esta página
    % Portada
    % \input{docUI/MiniPortada}
    \input{docUI/Portada}
    %------------------------------------------------------------
```

Cuenta con varios ejemplos de uso, pero está listo para ser usado y modificado.

## Documentación

Se encuentra con una documentación ligera para su uso.

> [!TIP]
> Es posible usar el compilador pdfLaTeX, pasando los datos a estáticos, para dudas (contáctame)[https://github.com/CCWebi].
