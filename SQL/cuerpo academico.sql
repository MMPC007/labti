insert into cuerpo_acad_estado(estado) values("En fomacion"),("Activo");

insert into cuerpo_académico(Nombre, PRODEP, Estado) values
("Cuerpo académico 01","2e8y3u9jdwkdns",1),
("Cuerpo académico 01","2e8y3u9jdwkdns",2),
("Cuerpo académico 01","2e8y3u9jdwkdns",1),
("Cuerpo académico 01","2e8y3u9jdwkdns",2),
("Cuerpo académico 01","2e8y3u9jdwkdns",1);
("Cuerpo académico 01","2e8y3u9jdwkdns",1),


SELECT informacion_personal.Nombre, cuerpo_academico.Nombre, lineas_investigacion.Nombre from informacion_personal, cuerpo_academico, lineas_investigacion, cuerpo_acad_lineas_invg, profesor_invg_cuerpo_acad where informacion_personal.Id_usuario = profesor_invg_cuerpo_acad.Id_usuario and profesor_invg_cuerpo_acad.Id_cuerpo_acad = cuerpo_academico.Id and cuerpo_academico.Id= cuerpo_acad_lineas_invg.Id_cuerpo_acad and cuerpo_acad_lineas_invg.Id_lineas_invg= lineas_investigacion.Id;