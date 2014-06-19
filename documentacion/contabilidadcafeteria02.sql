
/*
 * PRUEBAS
 *
 */

-- BORRADO DE INDICES
-- ~~~~~~~~~~~~~~~~~~
DROP INDEX "public"."INDEX_conceptos";
DROP INDEX "public"."INDEX_movimientos";
DROP INDEX "public"."INDEX_proveedores";
DROP INDEX "public"."INDEX_agenda";


-- BORRADOS EN CASCADA
-- ~~~~~~~~~~~~~~~~~~~
--ALTER TABLE "public"."proveedores"
--	DROP CONSTRAINT "REL_categorias_proveedores" CASCADE ;

--ALTER TABLE "public"."movimientos"
--	DROP CONSTRAINT "REL_movimientos_proveedor" CASCADE ;

--ALTER TABLE "public"."conceptos"
--	DROP CONSTRAINT "REL_conceptos_por_proveedor" CASCADE ;

--ALTER TABLE "public"."agenda"
--	DROP CONSTRAINT "REL_datos_del_proveedor" CASCADE ;


--BORRADO DE TABLAS
--~~~~~~~~~~~~~~~~~

DROP TABLE IF EXISTS "public"."movimientos";
DROP TABLE IF EXISTS "public"."proveedores";
DROP TABLE IF EXISTS "public"."agenda";
DROP TABLE IF EXISTS "public"."conceptos";
DROP TABLE IF EXISTS "public"."categorias_proveedor";


-- CREACIÓN DE TABLAS
-- ~~~~~~~~~~~~~~~~~~
CREATE TABLE "public"."categorias_proveedor"  (
	"id"         	serial NOT NULL,
	"descripcion"	varchar(250) NOT NULL,
	"anotaciones"	varchar(250) NULL,
	PRIMARY KEY("id")
)
WITHOUT OIDS
TABLESPACE "pg_default";
COMMENT ON TABLE "public"."categorias_proveedor" IS 'Categorias en la que vamos a englobar a todos los proveedores.';
COMMENT ON COLUMN "public"."categorias_proveedor"."descripcion" IS 'Descripción de la entrada.';
COMMENT ON COLUMN "public"."categorias_proveedor"."anotaciones" IS 'Notas varios.';


CREATE TABLE "public"."agenda"  (
	"id"        	serial NOT NULL,
	"alias"     	varchar(250) NOT NULL,
	"nombre"    	varchar(250) NULL,
	"direccion1"	varchar(250) NULL,
	"direccion2"	varchar(250) NULL,
	"direccion3"	varchar(250) NULL,
	"telefono1" 	varchar(9) NULL,
	"telefono2" 	varchar(9) NULL,
	"telefono3" 	varchar(9) NULL,
	"fax"       	varchar(9) NULL,
	"email1"    	varchar(250) NULL,
	"email2"    	varchar(250) NULL,
	"email3"    	varchar(250) NULL,
	"persona1"  	varchar(250) NULL,
	"persona2"  	varchar(250) NULL,
	"persona3"  	varchar(250) NULL,
	PRIMARY KEY("id")
)
WITHOUT OIDS
TABLESPACE "pg_default";
COMMENT ON TABLE "public"."agenda" IS 'Agenda MUY BÁSICA para servicios.';
COMMENT ON COLUMN "public"."agenda"."alias" IS 'Nombre familiar para esta entrada.';
COMMENT ON COLUMN "public"."agenda"."nombre" IS 'Nombre oficial para esta entrada.';


CREATE TABLE "public"."conceptos"  (
	"id"         	serial NOT NULL,
	"descripcion"	varchar(250) NOT NULL,
	"anotaciones"	varchar(250) NULL,
	PRIMARY KEY("id")
)
WITHOUT OIDS
TABLESPACE "pg_default";
COMMENT ON TABLE "public"."conceptos" IS 'Tabla usada para normalizar los conceptos usados de forma más habitual.';
COMMENT ON COLUMN "public"."conceptos"."descripcion" IS 'Descripción del concepto.';
COMMENT ON COLUMN "public"."conceptos"."anotaciones" IS 'Notas sobre cada concepto.';


CREATE TABLE "public"."proveedores"  (
	"id"         	serial NOT NULL UNIQUE,
	"rel_agenda" 	int4 NULL,
	"rel_categoria" int4 null,
	"anotaciones"	text NULL,
	PRIMARY KEY("id"),
    FOREIGN KEY (rel_agenda) REFERENCES "public"."agenda"("id"),
    FOREIGN KEY (rel_categoria) REFERENCES "public"."categorias_proveedor"("id")
)
WITHOUT OIDS
TABLESPACE "pg_default";
COMMENT ON TABLE "public"."proveedores" IS 'Tabla de proveedores.';
COMMENT ON COLUMN "public"."proveedores"."rel_agenda" IS 'Datos del proveedor en la agenda';
COMMENT ON COLUMN "public"."proveedores"."anotaciones" IS 'Notas sobre cada proveedor.';


CREATE TABLE "public"."movimientos"  (
	"id"               	serial NOT NULL,
	"fecha_anotacion"  	date NOT NULL DEFAULT now(),
	"fecha_factura"    	date NOT NULL,
	"rel_proveedor"    	int4 NOT NULL DEFAULT 1,
	"rel_concepto"      int4 NOT NULL DEFAULT 1,
	"entrada_efectivo" 	numeric(15,2) NULL DEFAULT 0,
	"entrada_via_banco"	numeric(15,2) NULL DEFAULT 0,
	"salida_efectivo"  	numeric(15,2) NULL DEFAULT 0,
	"salida_via_banco" 	numeric(15,2) NULL DEFAULT 0,
	"anotaciones"      	text NULL,
	PRIMARY KEY("id"),
    FOREIGN KEY (rel_proveedor) REFERENCES "public"."proveedores"("id"),
    FOREIGN KEY (rel_concepto) REFERENCES "public"."conceptos"("id")
)
WITHOUT OIDS
TABLESPACE "pg_default";
COMMENT ON TABLE "public"."movimientos" IS 'Tabla que gestiona los registros de cada movimiento de dinero.';
COMMENT ON COLUMN "public"."movimientos"."id" IS 'Identificador único para cada movimiento';
COMMENT ON COLUMN "public"."movimientos"."fecha_anotacion" IS 'Momento en el que se anota el movimiento';
COMMENT ON COLUMN "public"."movimientos"."fecha_factura" IS 'Fecha que figura en la factura';
COMMENT ON COLUMN "public"."movimientos"."rel_proveedor" IS 'Enlace hacia los datos de cada proveedor';
COMMENT ON COLUMN "public"."movimientos"."entrada_efectivo" IS 'Efectivo';
COMMENT ON COLUMN "public"."movimientos"."entrada_via_banco" IS 'Cobros en cuenta';
COMMENT ON COLUMN "public"."movimientos"."salida_efectivo" IS 'pagos';
COMMENT ON COLUMN "public"."movimientos"."salida_via_banco" IS 'Ingresos en cuenta';
COMMENT ON COLUMN "public"."movimientos"."anotaciones" IS 'Anotaciones';


-- ************************************************************************ --
/*
ALTER TABLE "public"."proveedores"
	ADD CONSTRAINT "REL_categorias_proveedores"
	FOREIGN KEY("id")
	REFERENCES "public"."categorias_proveedor"("id")
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION ;

ALTER TABLE "public"."movimientos"
	ADD CONSTRAINT "REL_movimientos_proveedor"
	FOREIGN KEY("id")
	REFERENCES "public"."proveedores"("id")
	MATCH SIMPLE
	ON DELETE NO ACTION
	ON UPDATE NO ACTION ;

ALTER TABLE "public"."conceptos"
	ADD CONSTRAINT "REL_conceptos_por_proveedor"
	FOREIGN KEY("id")
	REFERENCES "public"."proveedores"("id")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION ;

ALTER TABLE "public"."agenda"
	ADD CONSTRAINT "REL_datos_del_proveedor"
	FOREIGN KEY("id")
	REFERENCES "public"."proveedores"("rel_agenda")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION ;
*/

/* ------------------------------------------------------------------------ */
CREATE UNIQUE INDEX "INDEX_conceptos"
	ON "public"."conceptos"("id", "descripcion");

CREATE INDEX "INDEX_movimientos"
	ON "public"."movimientos"("id", "fecha_anotacion", "fecha_factura");

CREATE UNIQUE INDEX "INDEX_proveedores"
	ON "public"."proveedores"("id");

CREATE UNIQUE INDEX "INDEX_agenda"
	ON "public"."agenda"("id", "alias", "nombre");


