--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.4
-- Dumped by pg_dump version 9.3.4
-- Started on 2014-06-04 15:41:34 WEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = "public", pg_catalog;

SET default_with_oids = false;

--
-- TOC entry 177 (class 1259 OID 19139)
-- Name: menu; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "menu" (
    "id" integer NOT NULL,
    "fecha" "date",
    "ref_receta" integer,
    "ref_tipo_menu" integer
);


--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 177
-- Name: TABLE "menu"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "menu" IS 'Menú';


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 177
-- Name: COLUMN "menu"."id"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "menu"."id" IS 'Identificador';


--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 177
-- Name: COLUMN "menu"."fecha"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "menu"."fecha" IS 'Fecha del menú';


--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 177
-- Name: COLUMN "menu"."ref_receta"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "menu"."ref_receta" IS 'Referencia a la receta que queremos servir en esta fecha';


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 177
-- Name: COLUMN "menu"."ref_tipo_menu"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "menu"."ref_tipo_menu" IS 'Referencia al tipo de menú en el que se encuadra esta receta';


--
-- TOC entry 176 (class 1259 OID 19137)
-- Name: menu_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "menu_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 176
-- Name: menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "menu_id_seq" OWNED BY "menu"."id";


--
-- TOC entry 173 (class 1259 OID 19116)
-- Name: recetas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "recetas" (
    "id" integer NOT NULL,
    "nombre" character varying(254) NOT NULL,
    "ref_tipo" integer DEFAULT 1 NOT NULL
);


--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 173
-- Name: TABLE "recetas"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "recetas" IS 'Recetas almacenadas';


--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN "recetas"."id"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "recetas"."id" IS 'Identificador';


--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN "recetas"."nombre"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "recetas"."nombre" IS 'Nombre de la receta';


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN "recetas"."ref_tipo"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "recetas"."ref_tipo" IS 'Referencia al tipo de receta (Almuerzo, reposteria, bocadillo, etc)';


--
-- TOC entry 172 (class 1259 OID 19114)
-- Name: recetas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "recetas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 172
-- Name: recetas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "recetas_id_seq" OWNED BY "recetas"."id";


--
-- TOC entry 175 (class 1259 OID 19130)
-- Name: tipos_de_menus; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "tipos_de_menus" (
    "id" integer NOT NULL,
    "nombre" character varying(254)
);


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 175
-- Name: TABLE "tipos_de_menus"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "tipos_de_menus" IS 'Tipos de menus que almacenamos en la bbdd.';


--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN "tipos_de_menus"."id"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "tipos_de_menus"."id" IS 'Identificador';


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN "tipos_de_menus"."nombre"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "tipos_de_menus"."nombre" IS 'Nombre del tipo de menú';


--
-- TOC entry 174 (class 1259 OID 19128)
-- Name: tipos_de_menus_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "tipos_de_menus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 174
-- Name: tipos_de_menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "tipos_de_menus_id_seq" OWNED BY "tipos_de_menus"."id";


--
-- TOC entry 171 (class 1259 OID 19107)
-- Name: tipos_de_recetas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "tipos_de_recetas" (
    "id" integer NOT NULL,
    "nombre" character varying(254)
);


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 171
-- Name: TABLE "tipos_de_recetas"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "tipos_de_recetas" IS 'Tipos de recetas que almacenamos en la bbdd.';


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN "tipos_de_recetas"."id"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "tipos_de_recetas"."id" IS 'Identificador';


--
-- TOC entry 2051 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN "tipos_de_recetas"."nombre"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN "tipos_de_recetas"."nombre" IS 'Nombre del tipo de receta';


--
-- TOC entry 170 (class 1259 OID 19105)
-- Name: tipos_de_recetas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "tipos_de_recetas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2052 (class 0 OID 0)
-- Dependencies: 170
-- Name: tipos_de_recetas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "tipos_de_recetas_id_seq" OWNED BY "tipos_de_recetas"."id";


--
-- TOC entry 1900 (class 2604 OID 19142)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "menu" ALTER COLUMN "id" SET DEFAULT "nextval"('"menu_id_seq"'::"regclass");


--
-- TOC entry 1897 (class 2604 OID 19119)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "recetas" ALTER COLUMN "id" SET DEFAULT "nextval"('"recetas_id_seq"'::"regclass");


--
-- TOC entry 1899 (class 2604 OID 19133)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "tipos_de_menus" ALTER COLUMN "id" SET DEFAULT "nextval"('"tipos_de_menus_id_seq"'::"regclass");


--
-- TOC entry 1896 (class 2604 OID 19110)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "tipos_de_recetas" ALTER COLUMN "id" SET DEFAULT "nextval"('"tipos_de_recetas_id_seq"'::"regclass");


--
-- TOC entry 2029 (class 0 OID 19139)
-- Dependencies: 177
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (1, '2014-05-26', 1, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (2, '2014-05-26', 2, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (3, '2014-05-26', 3, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (4, '2014-05-26', 4, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (5, '2014-05-27', 5, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (6, '2014-05-27', 6, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (7, '2014-05-27', 7, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (8, '2014-05-27', 8, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (10, '2014-05-28', 10, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (9, '2014-05-28', 9, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (11, '2014-05-28', 11, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (12, '2014-05-28', 12, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (13, '2014-05-29', 13, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (14, '2014-05-29', 14, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (15, '2014-05-29', 15, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (16, '2014-05-29', 16, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (17, '2014-05-30', 17, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (18, '2014-05-30', 18, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (19, '2014-05-31', 19, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (20, '2014-05-31', 20, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (21, '2014-06-01', 21, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (22, '2014-06-01', 22, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (23, '2014-06-02', 23, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (24, '2014-06-02', 24, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (25, '2014-06-02', 25, 1);
INSERT INTO "menu" ("id", "fecha", "ref_receta", "ref_tipo_menu") VALUES (26, '2014-06-02', 26, 1);


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 176
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"menu_id_seq"', 26, true);


--
-- TOC entry 2025 (class 0 OID 19116)
-- Dependencies: 173
-- Data for Name: recetas; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (1, 'Crema de Calabacín', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (2, 'Ensalada Mixta de atún y huevo sancochado', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (3, 'Spaghetti a la Bologñesa', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (4, 'Filete de Cinta de Lomo con ajo y perejíl, con papas', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (5, 'Judiones', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (6, 'Gazpacho', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (7, 'Arroz 3 delicias', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (8, 'Pechuga de Pollo al Appletisser', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (9, 'Crema de Champiñones', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (10, 'Ensaladilla de pasta tricolor', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (11, 'Chocos en sala con papas sancochadas', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (12, 'Huevos a la flamenca, con arroz blanco', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (13, 'Sopa de Pollo', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (14, 'Ensalada de Fruta', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (15, 'Muslitos de Pollo al Ajillo', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (16, 'Macarrones al pesto', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (17, 'Tollos con Papas Arrugadas', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (18, 'Pella de Gofio', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (19, 'Melón con Jamón', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (20, 'Ensaladilla Rusa', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (21, 'Ensaladilla Rusa', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (22, 'Croquetas', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (23, 'Vidysuas', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (24, 'Tomates aliñados', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (25, 'Pescado en Salsa Verde', 1);
INSERT INTO "recetas" ("id", "nombre", "ref_tipo") VALUES (26, 'Spaghetti Carbonara', 1);


--
-- TOC entry 2054 (class 0 OID 0)
-- Dependencies: 172
-- Name: recetas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"recetas_id_seq"', 26, true);


--
-- TOC entry 2027 (class 0 OID 19130)
-- Dependencies: 175
-- Data for Name: tipos_de_menus; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "tipos_de_menus" ("id", "nombre") VALUES (1, 'Almuerzo');
INSERT INTO "tipos_de_menus" ("id", "nombre") VALUES (2, 'Desayuno');


--
-- TOC entry 2055 (class 0 OID 0)
-- Dependencies: 174
-- Name: tipos_de_menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"tipos_de_menus_id_seq"', 2, true);


--
-- TOC entry 2023 (class 0 OID 19107)
-- Dependencies: 171
-- Data for Name: tipos_de_recetas; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "tipos_de_recetas" ("id", "nombre") VALUES (1, 'Comida');


--
-- TOC entry 2056 (class 0 OID 0)
-- Dependencies: 170
-- Name: tipos_de_recetas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"tipos_de_recetas_id_seq"', 1, true);


--
-- TOC entry 1911 (class 2606 OID 19144)
-- Name: menu_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "menu"
    ADD CONSTRAINT "menu_pk" PRIMARY KEY ("id");


--
-- TOC entry 1906 (class 2606 OID 19121)
-- Name: recetas_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "recetas"
    ADD CONSTRAINT "recetas_pk" PRIMARY KEY ("id");


--
-- TOC entry 2057 (class 0 OID 0)
-- Dependencies: 1906
-- Name: CONSTRAINT "recetas_pk" ON "recetas"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT "recetas_pk" ON "recetas" IS 'Clave primaria para las recetas.';


--
-- TOC entry 1909 (class 2606 OID 19135)
-- Name: tipos_de_menus_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "tipos_de_menus"
    ADD CONSTRAINT "tipos_de_menus_pk" PRIMARY KEY ("id");


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 1909
-- Name: CONSTRAINT "tipos_de_menus_pk" ON "tipos_de_menus"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT "tipos_de_menus_pk" ON "tipos_de_menus" IS 'Clave primaria para los tipos de menús que manejamos.';


--
-- TOC entry 1903 (class 2606 OID 19112)
-- Name: tipos_de_recetas_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "tipos_de_recetas"
    ADD CONSTRAINT "tipos_de_recetas_pk" PRIMARY KEY ("id");


--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 1903
-- Name: CONSTRAINT "tipos_de_recetas_pk" ON "tipos_de_recetas"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT "tipos_de_recetas_pk" ON "tipos_de_recetas" IS 'Clave primaria para los tipos de recetas que manejamos.';


--
-- TOC entry 1912 (class 1259 OID 19155)
-- Name: menus_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "menus_idx" ON "menu" USING "btree" ("id", "fecha");


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 1912
-- Name: INDEX "menus_idx"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON INDEX "menus_idx" IS 'Indice para los menus';


--
-- TOC entry 1904 (class 1259 OID 19127)
-- Name: recetas_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "recetas_idx" ON "recetas" USING "btree" ("id", "nombre");


--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 1904
-- Name: INDEX "recetas_idx"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON INDEX "recetas_idx" IS 'Indice de las recetas.';


--
-- TOC entry 1907 (class 1259 OID 19136)
-- Name: tipos_de_menus.idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "tipos_de_menus.idx" ON "tipos_de_menus" USING "btree" ("id", "nombre");


--
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 1907
-- Name: INDEX "tipos_de_menus.idx"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON INDEX "tipos_de_menus.idx" IS 'Indice para los tipos de menús';


--
-- TOC entry 1901 (class 1259 OID 19113)
-- Name: tipos_de_recetas.idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "tipos_de_recetas.idx" ON "tipos_de_recetas" USING "btree" ("id", "nombre");


--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 1901
-- Name: INDEX "tipos_de_recetas.idx"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON INDEX "tipos_de_recetas.idx" IS 'Indice para los tipos de recetas';


--
-- TOC entry 1913 (class 2606 OID 19145)
-- Name: menu_receta_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "menu"
    ADD CONSTRAINT "menu_receta_fk" FOREIGN KEY ("ref_receta") REFERENCES "recetas"("id");


--
-- TOC entry 1914 (class 2606 OID 19150)
-- Name: menu_tipo_de_menu_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "menu"
    ADD CONSTRAINT "menu_tipo_de_menu_fk" FOREIGN KEY ("ref_tipo_menu") REFERENCES "tipos_de_menus"("id");


-- Completed on 2014-06-04 15:41:34 WEST

--
-- PostgreSQL database dump complete
--

