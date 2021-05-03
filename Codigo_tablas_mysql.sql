CREATE TABLE CONTENIDO 
(
	ID_CONTENIDO INTEGER NOT NULL,
	NOMBRE VARCHAR(200),
	DESCRIPCION TEXT,
	FECHA_CREACION DATETIME,
	FECHA_ACTUALIZACION DATETIME
);
ALTER TABLE CONTENIDO ADD CONSTRAINT CONTENIDO_PK PRIMARY KEY (ID_CONTENIDO);

CREATE TABLE APUNTE
(
	ID_APUNTE INTEGER NOT NULL,
	CONTENIDO_ID INTEGER,
	NOMBRE VARCHAR(200),
	URL VARCHAR(200),
	FECHA_CREACION DATETIME,
	FECHA_ACTUALIZACION DATETIME
); 
ALTER TABLE APUNTE ADD CONSTRAINT APUNTE_PK PRIMARY KEY (ID_APUNTE);
ALTER TABLE APUNTE ADD CONSTRAINT CONTENIDO_APUNTE_FK FOREIGN KEY (CONTENIDO_ID) REFERENCES CONTENIDO(ID_CONTENIDO);

ALTER TABLE APUNTE DROP CONSTRAINT CONTENIDO_APUNTE_FK;
ALTER TABLE APUNTE CHANGE ID_APUNTE ID_APUNTE INTEGER AUTO_INCREMENT;
ALTER TABLE CONTENIDO CHANGE ID_CONTENIDO ID_CONTENIDO INTEGER AUTO_INCREMENT;

ALTER TABLE APUNTE ADD CONSTRAINT CONTENIDO_APUNTE_FK FOREIGN KEY (CONTENIDO_ID) REFERENCES CONTENIDO(ID_CONTENIDO);

CREATE TABLE APUNTE_TIPO
(
	ID_APUNTE_TIPO INTEGER NOT NULL,
	NOMBRE VARCHAR(200),
	FECHA_CREACION DATETIME,
	FECHA_ACTUALIZACION DATETIME,
	ID_APUNTE INTEGER
);	
ALTER TABLE APUNTE_TIPO ADD CONSTRAINT APUNTE_TIPO_PK PRIMARY KEY (ID_APUNTE_TIPO);
ALTER TABLE APUNTE_TIPO ADD CONSTRAINT APUNTE_TIPO_APUNTE_FK FOREIGN KEY (ID_APUNTE) REFERENCES APUNTE(ID_APUNTE);

CREATE TABLE USUARIO 
(
	ID_USUARIO INTEGER NOT NULL,
	EMAIL VARCHAR(300),
	CODIGO VARCHAR(300),
	FECHA_CREACION DATETIME,
	FECHA_ACTUALIZACION DATETIME,
	FECHA_CODIGO DATETIME
);
ALTER TABLE ID_USUARIO ADD CONSTRAINT USUARIO_PK PRIMARY KEY (ID_USUARIO);