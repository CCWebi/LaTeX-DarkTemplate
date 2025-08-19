--- Módulo UI-portada
-- Módulo usado para modificado de datos de UI y portada (LDoc documentation)
-- @author Isaac Robledo

--- Datos de alumnos
-- Datos de los alumnos, autores/participes del proyecto
local alumnos = {
    {nombre = "alumno1", apellidos = "apellido1", id = "00001"},
    {nombre = "alumno2", apellidos = "apellido2", id = "00002"},
    {nombre = "alumno3", apellidos = "apellido3", id = "00003"},
    {nombre = "alumno4", apellidos = "apellido4", id = "00004"},
}

--- Datos de docentes
-- Datos de los docentes, responsables de clase
local docentes = {
    {nombre = "profesor1", apellidos = "apellido5", puesto = "Profesor"},
    {nombre = "profesor2", apellidos = "apellido6", puesto = "Adjunto"},
    {nombre = "profesor3", apellidos = "apellido7", puesto = "Laboratorio"},
}

--- Temas
-- Paletas (dark) de colores para el documento
local temas = {
    {
        nombre = "darkcula", -- Dracula MIT Licence |  https://draculatheme.com/contribute
        paleta = {
            Background = "202430",
            Foreground = "F8F8EE",
            Variante1 = "6272A0", -- Commment
            Variante2 = "444756", -- Selection
            Variante3 = "FF79C2", -- Rosa
            Variante4 = "8BE9FA", -- Cyan
            Variante5 = "50FA77", -- Verde
            Variante6 = "F1FA88", -- Amarillo
            Variante7 = "BD93F5", -- Purpura
            Variante8 = "FFB868", -- Naranja
            Variante9 = "FF5551", -- Rojo - Extra
        },
    },
    {
        nombre = "twodark", -- OneDark MIT Licence | https://github.com/one-dark/github-one-dark-theme MODIFIED
        paleta = {
            Background = "242A2F",
            Foreground = "ABB2BB",
            Variante1 = "616161", -- Comment
            Variante2 = "2c313a", -- Selection
            Variante3 = "C678DA", -- Rosa
            Variante4 = "E5C077", -- Amarillo
            Variante5 = "61AFEB", -- Azul
            Variante6 = "98C377", -- Verde
            Variante7 = "56B6BE", -- Naranja
            Variante8 = "E06C71", -- Rojo
            Variante9 = "934498", -- Purpura - Extra
        },
    },
    {
        nombre = "ayuhdark", -- AyuDark MIT Licence | https://github.com/ayu-theme/ayu-colors?tab=readme-ov-file
        paleta = {
            Background = "0D1017",
            Foreground = "CCCAC2",
            Variante1 = "242936", -- Comment
            Variante2 = "131721", -- Selection
            Variante3 = "FF8F40", -- Naranja
            Variante4 = "39BAE6", -- Azul
            Variante5 = "FFB454", -- Naranja Claro
            Variante6 = "AAD94C", -- Verde
            Variante7 = "95E6CB", -- Purpura
            Variante8 = "D2A6FF", -- Lotus
            Variante9 = "F26D78", -- Rojo - Extra
        },
    },
    {
        nombre = "osakanight", -- TokyoNight MIT Licence | https://github.com/tokyo-night/tokyo-night-vscode-theme MODIFIED
        paleta = {
            Background = "1A1B26",
            Foreground = "A9B1D6",
            Variante1 = "565F89", -- Commment
            Variante2 = "24283B", -- Selection
            Variante3 = "BB9AF7", -- Morado light
            Variante4 = "5A3E8E", -- Morado
            Variante5 = "7AA2F7", -- Azulado
            Variante6 = "9ECE6A", -- Verde
            Variante7 = "FF9E64", -- Naranja
            Variante8 = "E0AF68", -- Amarillo
            Variante9 = "2AC3DE", -- Turquesa - Extra
        },
    },
}

--- Universidad
-- Nombre completo de la universidad
universidad = "Universidad"

--- Siglas
-- Acrónimo/Siglas del nombre de la universidad
uni = "UNI"

--- Facultad
-- Nombre completo de la facultad
facultad = "Facultad"

--- Carrera
-- Carrera(s) de los alumnos
carrera = "Carrera"

--- Semestre
-- Semestre actual
semestre = "2026-1"

--- Materia
-- Materia o tema de interés
materia = "Materia"

--- Título
-- Título del documento
titulo = "Título"


--- Imprime Alumnos
-- Dados los datos escritos en alumnos, formatea e imprime las líneas necesarias para compilación
function imprimeAlumnos()
    for _, alumno in ipairs(alumnos) do
        tex.print(alumno.nombre .. " " .. alumno.apellidos .. "&" .. alumno.id .. "\\\\")
    end
    tex.print("\\hline")
end

--- Imprime Docentes
-- Dados los datos escritos en docentes, formatea e imprime las líneas necesarias para compilación
function imprimeDocentes()
    for _, docente in ipairs(docentes) do
        tex.print(docente.nombre .. " " .. docente.apellidos .. "&" .. docente.puesto .. "\\\\")
    end
    tex.print("\\hline")
end

--- Seleccionar tema
-- Actualiza tema_seleccionado con el tema buscado, si no se encuentra, se usará Darkcula.
-- @tparam string tema_buscado Nombre del tema buscado.
function seleccionaTema(tema_buscado)
    local tema_seleccionado = {}
    
    for _, tema in ipairs(temas) do
        if (tema.nombre == tema_buscado) then
            tema_seleccionado = tema
        end
    end
    if (tema_seleccionado == {}) then
        tema_seleccionado = tema[0]
    end

    tex.print("\\definecolor{Background}{HTML}{" .. tema_seleccionado.paleta.Background .. "}\n")
    tex.print("\\definecolor{Foreground}{HTML}{" .. tema_seleccionado.paleta.Foreground .. "}\n")
    tex.print("\\definecolor{Variante1}{HTML}{" .. tema_seleccionado.paleta.Variante1 .. "}\n")
    tex.print("\\definecolor{Variante2}{HTML}{" .. tema_seleccionado.paleta.Variante2 .. "}\n")
    tex.print("\\definecolor{Variante3}{HTML}{" .. tema_seleccionado.paleta.Variante3 .. "}\n")
    tex.print("\\definecolor{Variante4}{HTML}{" .. tema_seleccionado.paleta.Variante4 .. "}\n")
    tex.print("\\definecolor{Variante5}{HTML}{" .. tema_seleccionado.paleta.Variante5 .. "}\n")
    tex.print("\\definecolor{Variante6}{HTML}{" .. tema_seleccionado.paleta.Variante6 .. "}\n")
    tex.print("\\definecolor{Variante7}{HTML}{" .. tema_seleccionado.paleta.Variante7 .. "}\n")
    tex.print("\\definecolor{Variante8}{HTML}{" .. tema_seleccionado.paleta.Variante8 .. "}\n")
    tex.print("\\definecolor{Variante9}{HTML}{" .. tema_seleccionado.paleta.Variante9 .. "}\n")
end