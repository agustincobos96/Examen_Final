USE examen_final;
SELECT*FROM bicicleterias;
SELECT*FROM bicicletas;

SELECT 	b.cant_ventas AS CantidadDeVentas,
	b.ganancias AS Ganancias,COUNT(bicicletas.nro_de_serie) AS BicicletasEnVenta
FROM bicicleterias b 
INNER JOIN bicicletas
ON b.id=bicicletas.bicicleteria_idbi
WHERE b.id=2; 