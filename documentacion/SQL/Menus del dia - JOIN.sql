SELECT
        "menu"."fecha"              AS "Fecha",
        "recetas"."nombre"          AS "Nombre",
        "tipos_de_recetas"."nombre" AS "Tipo de Receta",
        "tipos_de_menus"."nombre"   AS "Tipo de Menú"
FROM
        "public"."menu" "menu"
                INNER JOIN "public"."recetas" "recetas"
                ON "menu"."ref_receta" = "recetas"."id"
                        INNER JOIN "public"."tipos_de_menus" "tipos_de_menus"
                        ON "menu"."ref_tipo_menu" = "tipos_de_menus"."id"
                                INNER JOIN "public"."tipos_de_recetas" "tipos_de_recetas"
                                ON "recetas"."ref_tipo" = "tipos_de_recetas"."id"
WHERE
        /* "menu"."fecha" = '2014-05-28' */
        "menu"."fecha" = now()::date
order by
        "menu"."fecha",
        "recetas"."nombre"
;

/* Día de la semana: 0 = Domingo */
SELECT EXTRACT(DOW FROM NOW()::DATE);

SELECT
  CASE extract(dow from now())
    WHEN 0 THEN 'Domingo'
    WHEN 1 THEN 'Luis'
    WHEN 2 THEN 'Martes'
    WHEN 3 THEN 'Miércoles'
    WHEN 4 THEN 'Jueves'
    WHEN 5 THEN 'Viernes'
    WHEN 6 THEN 'Sábado'
    ELSE 'error' 
  END;

