-- 1. Llista el nom de tots els productes que hi ha en la taula producto.
SELECT nombre
FROM producto;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.
SELECT p.nombre,
       p.precio
FROM producto p;

-- 3. Llista totes les columnes de la taula producto.
SELECT *
FROM producto;

-- 4. Llista el nom dels productes, el preu en euros (precio_eur) i el preu en dòlars estatunidencs (precio_usd) amb un tipus de canvi de 1 € = 1 $.
SELECT p.nombre,
       p.precio as precio_eur,
       (p.precio * 1.0) as precio_usd
FROM producto p;

-- 5. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (amb un tipus de canvi de 1 € = 1,1 $ i arrodonint el resultat a dues xifres decimals). Utilitza els següents àlies per a les columnes: nom del producte, euros, dòlars.
SELECT p.nombre as nom del producte,
       p.precio as euros,
       ROUND(p.precio * 1.1, 2) as dòlars
FROM producto p;

-- 6. Llista els noms (nombre) i els preus de tots els productes de la taula producto, convertint els noms a majúscula.
SELECT UPPER(p.nombre) as nombre,
       p.precio as precio
FROM producto p;

-- 7. Llista els noms (nombre) i els preus (precio) dels productes de la taula producto, convertint els noms a minúscula.
SELECT LOWER(p.nombre) as nombre,
       p.precio as precio
FROM producto p;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant (iniciales).
SELECT f.nombre,
       UPPER(SUBSTR(f.nombre,1,2)) as iniciales
FROM fabricante f;

-- 9. Llista els noms i els preus dels productes, arrodonint el valor del preu (precio)
SELECT p.nombre as nombre,
       ROUND(p.precio) as precio
FROM producto p;

-- 10. Llista els noms i els preus de tots els productes (precio truncado) de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
SELECT p.nombre as nombre,
       TRUNCATE(p.precio, 0) as precio truncado
FROM producto p;

-- 11. Mostra una llista amb els codis dels fabricants que apareixen a la taula producto, incloent possibles repeticions.
SELECT p.codigo_fabricante
FROM producto p;

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.
SELECT DISTINCT p.codigo_fabricante
FROM producto p;

-- 13. Llista els noms dels fabricants ordenats de manera ascendent
SELECT f.nombre
FROM fabricante f
ORDER BY f.nombre ASC;

-- 14. Llista els noms dels fabricants ordenats de manera descendent
SELECT f.nombre
FROM fabricante f
ORDER BY f.nombre DESC;

-- 15. Llista els noms i els preus dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
SELECT p.nombre,
       p.precio
FROM producto p
ORDER BY p.nombre ASC;

SELECT p.nombre,
       p.precio
FROM producto p
ORDER BY p.precio DESC;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.
SELECT codigo, nombre
FROM fabricante
LIMIT 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
SELECT codigo, nombre
FROM fabricante
LIMIT 2 OFFSET 3;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT p.nombre,
       p.precio
FROM producto p
ORDER BY p.precio ASC
LIMIT 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT p.nombre,
       p.precio
FROM producto p
ORDER BY p.precio DESC
LIMIT 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
SELECT p.nombre
FROM producto p
WHERE p.codigo_fabricante = 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant (nombre del fabricante) de tots els productes de la base de dades.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as nombre del fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 22. Llista tots els productes amb nom, preu i nom del fabricant (nombre del fabricante) ordenats alfabèticament.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as nombre del fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY f.nombre;

-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricant (codigo fabricante) i nom del fabricant (nombre fabricante), de tots els productes de la base de dades.
SELECT p.codigo as codigo, p.nombre as nombre, f.codigo as codigo fabricante, f.nombre as nombre fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.codigo;

-- 24. Retorna el nom, el preu i el nom del fabricant (fabricante), del producte més barat.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricant
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio = (SELECT MIN(p2.precio)
                  FROM producto p2);

-- 25. Retorna el nom del producte, el preu i el nom del seu fabricant (fabricante), del producte més car.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio = (SELECT MAX(p2.precio)
                  FROM producto p2);

-- 26. Retorna una llista amb nom i preu de tots els productes del fabricant Lenovo.
SELECT p.nombre as nombre, p.precio as precio
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) = 'lenovo';

-- 27. Retorna una llista amb nom i preu de tots els productes del fabricant Crucial que tinguin un preu major que 200 €
SELECT p.nombre as nombre, p.precio as precio
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) = 'crucial' AND p.precio > 200;

-- 28. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) = 'asus'
   OR LOWER(f.nombre) = 'Hewlett-Packard'
   OR LOWER(f.nombre) = 'seagate';

-- 29. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Fent servir l'operador IN.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) IN ('asus', 'hewlett-packard', 'seagate');

-- 30. Retorna un llistat amb el nom, el preu i el nom del fabricant (fabricante) dels productes, on el nom del fabricant acabi en la lletra 'e'.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) LIKE '%e';

-- 31. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots aquells productes els fabricants dels quals contenen la lletra 'w' en el seu nom.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) LIKE '%w%';

-- 32. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots els productes amb un preu igual o superior a 180 €. Ordena els resultats, primer pel preu en ordre descendent i després pel nom del producte en ordre ascendent.
SELECT p.nombre as nombre, p.precio as precio, f.nombre as fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180
ORDER BY p.precio DESC, p.nombre;

-- 33. Retorna un llistat amb el codi i el nom de fabricant (fabricante), solament d'aquells fabricants que tenen productes associats en la base de dades.
SELECT DISTINCT f.codigo as codigo, f.nombre as nombre
FROM fabricante f INNER JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. Inclou també els fabricants que no tenen cap producte. Mostra el nom del fabricant (fabricante) i el nom del producte (producto).
SELECT f.nombre as fabricante, p.nombre as producto
FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 35. Retorna un llistat on només apareguin els noms dels fabricants (fabricante) que no tenen cap producte associat.
SELECT f.nombre as fabricante
FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante
WHERE p.codigo IS NULL;

-- 36. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
SELECT p.nombre as nombre
FROM producto p
WHERE p.codigo_fabricante = (SELECT f.codigo
                             FROM fabricante f
                             WHERE LOWER(f.nombre) = 'lenovo');

-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).
SELECT *
FROM producto p
WHERE p.precio = (SELECT MAX(precio)
                  FROM producto p1
                  WHERE p1.codigo_fabricante = (SELECT f.codigo
                                                FROM fabricante f
                                                WHERE LOWER(f.nombre) = 'lenovo'));

-- 38. Llista el nom del producte més car del fabricant Lenovo.
SELECT p.nombre as nombre
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE LOWER(f.nombre) = 'lenovo'
ORDER BY p.precio DESC
LIMIT 1;

-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.
SELECT p.nombre as nombree
FROM producto p
WHERE p.precio =
      (SELECT MAX(p1.precio)
       FROM producto p1
       WHERE p1.codigo_fabricante = (
           SELECT f.codigo
           FROM fabricante f
           WHERE LOWER(f.nombre) = 'hewlett-packard'))
AND p.codigo_fabricante =
    (SELECT f.codigo
     FROM fabricante f
     WHERE LOWER(f.nombre) = 'hewlett-packard');

-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
SELECT *
FROM producto p
WHERE p.precio >= (SELECT MAX(p1.precio)
                   FROM producto p1
                   WHERE p1.codigo_fabricante = (SELECT f.codigo
                                                 FROM fabricante f
                                                 WHERE LOWER(f.nombre) = 'lenovo'));

-- 41. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
SELECT *
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >
      (SELECT AVG(p1.precio)
       FROM producto p1 JOIN fabricante f1 on p1.codigo_fabricante = f1.codigo
       WHERE LOWER(f1.nombre) = 'asus')
AND LOWER(f.nombre) = 'asus';
