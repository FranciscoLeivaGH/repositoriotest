--CRUD CREATE
INSERT INTO USUARIO VALUES(1,'francisco.j.leiva@hotmail.com','FJLN01',TO_DATE('15-03-2021 9:30:00',' DD-MM-YYYY HH:MI:SS'),TO_DATE('15-03-2021 9:30:00',' DD-MM-YYYY HH:MI:SS'),TO_DATE('15-03-2021 9:30:00',' DD-MM-YYYY HH:MI:SS'));
--CRUD UPDATE
UPDATE USUARIO SET EMAIL = 'francisco.leiva@cloud.uautonoma.cl'
WHERE ID_USUARIO = 1;
--CRUD READ
SELECT * FROM USUARIO;
SELECT EMAIL,FECHA_CREACION FROM USUARIO;
--CRUD DELETE
ALTER TABLE APUNTE DROP CONSTRAINT CONTENIDO_APUNTE_FK;
DROP TABLE CONTENIDO;
