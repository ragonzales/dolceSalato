select * from dolcesalato.categoria;
select * from dolcesalato.cobertura;
select * from dolcesalato.producto;
select * from dolcesalato.proporcionproductos;
select * from dolcesalato.promocion;
select * from dolcesalato.usuario;

delete from dolcesalato.cobertura;
delete from dolcesalato.producto;
delete from dolcesalato.promocion;
delete from dolcesalato.proporcionproductos;

ALTER TABLE dolcesalato.cobertura AUTO_INCREMENT = 1;
ALTER TABLE dolcesalato.producto AUTO_INCREMENT = 1;
ALTER TABLE dolcesalato.promocion AUTO_INCREMENT = 1;
ALTER TABLE dolcesalato.proporcionproductos AUTO_INCREMENT = 1;

/*
	dir /b > lista.txt   //exportado de nombre de carpetas
*/