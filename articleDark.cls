% -------------
% Clase de documento personalizada
% -------------

% Versión del núcleo
\NeedsTeXFormat{LaTeX2e}

% Definición de la clase
\ProvidesClass{articleDark}[2026/06/16 v2.0 Plantilla estándar para trabajos de universidad]

% Argumentos no encontrados se buscarán en la clase definida (por defecto "article")
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Tamaño de fuente : Por defecto 12pt
% Tipo de proyecto: Por defecto article. Ejemplos de otros formatos: report, book, letter, etc. !! Esta plantilla no está pensada para IEEEtrans, memoir, o beamer. Cambiar los argumentos no encontrados en el comando "\DeclareOption*{\PassOptionsToClass{\CurrentOption}{<Clase de documento de base>}}"
% Se recomienda agregar "notitlepage" si se usa el estilo de portada de cuarto.
% twoside := Preparado para trabajos con impresióna  doble cara.
% twocolumn := Para uso de dos columnas.
% openright := En report o books, etc, iniciar de lado derecho.
\LoadClass[12pt]{article}


% Tamaño de hoja : Por defecto a4paper. Ejemplos de otros formatos: letterpaper, a3paper, o no poner si se requiere un tamaño personalizado y agregarlo en geometry.
% margin=<medida> := Agrega un margen equidistante de los cuatro lados de la hoja, excelente para documentos sin encuadernar. Reemplaza top, bottom, left, right. 
% inner | outter := Reemplaza left y right en configuración twoside
% includeheadfoot := Designa un espacio para header y footer (@See src/main para detalles del espacio del header/footer)
% bindingoffset=<medida> := Para agregar márgen de encuadernado, en configuración twoside, lo agrega del lado del lomo.
% showframe := para mostrar los márgenes.
\RequirePackage[letterpaper, margin=0.75in, headheight=30pt, includeheadfoot]{geometry}
% Tamaño personalizado con papersize={<medida de ancho>, <medida de largo>}
%\RequirePackage[papersize={7in, 10in}, margin=0.75in, headheight=30pt, includeheadfoot]{geometry}

% Lenguaje y región. Cambia formato o contenido a elementos por defecto, como secciones, vocabulario, o formato de fechas, entre otros.
\RequirePackage[spanish, mexico]{babel}