# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 14 correctas de 42 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.43 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 5: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'del producte,
       p.precio as euros,
       ROUND(p.precio * 1.1, 2) as dòla' at line 2


## ✅ Query 6: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.36 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 10: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'truncado
FROM producto p' at line 3


## ✅ Query 11: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 13: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 16: Incorrecto
```diff
--- 
+++ 
@@ -1,6 +1,12 @@
-codigo | nombre
-1.00 | Asus
-2.00 | Lenovo
-3.00 | Hewlett-Packard
-4.00 | Samsung
-5.00 | Seagate
+nombre | precio
+GeForce GTX 1080 Xtreme | 755.00
+Portátil Yoga 520 | 559.00
+Portátil Ideapd 320 | 444.00
+Monitor 27 LED Full HD | 245.99
+Monitor 24 LED Full HD | 202.00
+GeForce GTX 1050Ti | 185.00
+Impresora HP Laserjet Pro M26nw | 180.00
+Disco SSD 1 TB | 150.99
+Memoria RAM DDR4 8GB | 120.00
+Disco duro SATA3 1TB | 86.99
+Impresora HP Deskjet 3720 | 59.99
```

⏱ Tiempo: 0.35 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 17: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,6 @@
 codigo | nombre
+1.00 | Asus
+2.00 | Lenovo
+3.00 | Hewlett-Packard
 4.00 | Samsung
 5.00 | Seagate
```

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 18: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
-nombre | precio
-Impresora HP Deskjet 3720 | 59.99
+codigo | nombre
+4.00 | Samsung
+5.00 | Seagate
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 19: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
 nombre | precio
-GeForce GTX 1080 Xtreme | 755.00
+Impresora HP Deskjet 3720 | 59.99
```

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 20: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
-nombre
-Portátil Yoga 520
-Portátil Ideapd 320
+nombre | precio
+GeForce GTX 1080 Xtreme | 755.00
```

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 21: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,3 @@
-nombre | precio | nombre del fabricante
-Disco duro SATA3 1TB | 86.99 | Seagate
-Memoria RAM DDR4 8GB | 120.00 | Crucial
-Disco SSD 1 TB | 150.99 | Samsung
-GeForce GTX 1050Ti | 185.00 | Gigabyte
-GeForce GTX 1080 Xtreme | 755.00 | Crucial
-Monitor 24 LED Full HD | 202.00 | Asus
-Monitor 27 LED Full HD | 245.99 | Asus
-Portátil Yoga 520 | 559.00 | Lenovo
-Portátil Ideapd 320 | 444.00 | Lenovo
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+nombre
+Portátil Yoga 520
+Portátil Ideapd 320
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 22: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'del fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codi' at line 2


## ❌ Query 23: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'del fabricante
FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codi' at line 2


## ❌ Query 24: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'fabricante, f.nombre as nombre fabricante
FROM producto p JOIN fabricante f ON p' at line 2


## ❌ Query 25: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre | precio | fabricante
-GeForce GTX 1080 Xtreme | 755.00 | Crucial
+nombre | precio | fabricant
+Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
```

⏱ Tiempo: 0.45 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 26: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
-nombre | precio
-Portátil Yoga 520 | 559.00
-Portátil Ideapd 320 | 444.00
+nombre | precio | fabricante
+GeForce GTX 1080 Xtreme | 755.00 | Crucial
```

⏱ Tiempo: 0.42 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 27: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
 nombre | precio
-GeForce GTX 1080 Xtreme | 755.00
+Portátil Yoga 520 | 559.00
+Portátil Ideapd 320 | 444.00
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 28: Incorrecto
```diff
--- 
+++ 
@@ -1,6 +1,2 @@
-nombre | precio | fabricante
-Disco duro SATA3 1TB | 86.99 | Seagate
-Monitor 24 LED Full HD | 202.00 | Asus
-Monitor 27 LED Full HD | 245.99 | Asus
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+nombre | precio
+GeForce GTX 1080 Xtreme | 755.00
```

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 29: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 30: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,6 @@
 nombre | precio | fabricante
 Disco duro SATA3 1TB | 86.99 | Seagate
-GeForce GTX 1050Ti | 185.00 | Gigabyte
+Monitor 24 LED Full HD | 202.00 | Asus
+Monitor 27 LED Full HD | 245.99 | Asus
+Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
+Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ❌ Query 31: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
 nombre | precio | fabricante
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+Disco duro SATA3 1TB | 86.99 | Seagate
+GeForce GTX 1050Ti | 185.00 | Gigabyte
```

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 32: Incorrecto
```diff
--- 
+++ 
@@ -1,8 +1,3 @@
 nombre | precio | fabricante
-GeForce GTX 1080 Xtreme | 755.00 | Crucial
-Portátil Yoga 520 | 559.00 | Lenovo
-Portátil Ideapd 320 | 444.00 | Lenovo
-Monitor 27 LED Full HD | 245.99 | Asus
-Monitor 24 LED Full HD | 202.00 | Asus
-GeForce GTX 1050Ti | 185.00 | Gigabyte
+Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
 Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 33: Incorrecto
```diff
--- 
+++ 
@@ -1,8 +1,8 @@
-codigo | nombre
-1.00 | Asus
-2.00 | Lenovo
-3.00 | Hewlett-Packard
-4.00 | Samsung
-5.00 | Seagate
-6.00 | Crucial
-7.00 | Gigabyte
+nombre | precio | fabricante
+GeForce GTX 1080 Xtreme | 755.00 | Crucial
+Portátil Yoga 520 | 559.00 | Lenovo
+Portátil Ideapd 320 | 444.00 | Lenovo
+Monitor 27 LED Full HD | 245.99 | Asus
+Monitor 24 LED Full HD | 202.00 | Asus
+GeForce GTX 1050Ti | 185.00 | Gigabyte
+Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 34: Incorrecto
```diff
--- 
+++ 
@@ -1,14 +1,8 @@
-fabricante | producto
-Asus | Monitor 27 LED Full HD
-Asus | Monitor 24 LED Full HD
-Lenovo | Portátil Ideapd 320
-Lenovo | Portátil Yoga 520
-Hewlett-Packard | Impresora HP Laserjet Pro M26nw
-Hewlett-Packard | Impresora HP Deskjet 3720
-Samsung | Disco SSD 1 TB
-Seagate | Disco duro SATA3 1TB
-Crucial | GeForce GTX 1080 Xtreme
-Crucial | Memoria RAM DDR4 8GB
-Gigabyte | GeForce GTX 1050Ti
-Huawei | NULL
-Xiaomi | NULL
+codigo | nombre
+1.00 | Asus
+2.00 | Lenovo
+3.00 | Hewlett-Packard
+4.00 | Samsung
+5.00 | Seagate
+6.00 | Crucial
+7.00 | Gigabyte
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 35: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,14 @@
-fabricante
-Huawei
-Xiaomi
+fabricante | producto
+Asus | Monitor 27 LED Full HD
+Asus | Monitor 24 LED Full HD
+Lenovo | Portátil Ideapd 320
+Lenovo | Portátil Yoga 520
+Hewlett-Packard | Impresora HP Laserjet Pro M26nw
+Hewlett-Packard | Impresora HP Deskjet 3720
+Samsung | Disco SSD 1 TB
+Seagate | Disco duro SATA3 1TB
+Crucial | GeForce GTX 1080 Xtreme
+Crucial | Memoria RAM DDR4 8GB
+Gigabyte | GeForce GTX 1050Ti
+Huawei | NULL
+Xiaomi | NULL
```

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 36: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
-9.00 | Portátil Ideapd 320 | 444.00 | 2.00
+fabricante
+Huawei
+Xiaomi
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 37: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+nombre
+Portátil Yoga 520
+Portátil Ideapd 320
```

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 38: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre
-Portátil Yoga 520
+codigo | nombre | precio | codigo_fabricante
+8.00 | Portátil Yoga 520 | 559.00 | 2.00
```

⏱ Tiempo: 0.42 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 39: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
 nombre
-Impresora HP Deskjet 3720
+Portátil Yoga 520
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 40: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
-codigo | nombre | precio | codigo_fabricante
-5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+nombree
+Impresora HP Laserjet Pro M26nw
```

⏱ Tiempo: 0.45 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 41: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
 codigo | nombre | precio | codigo_fabricante
-7.00 | Monitor 27 LED Full HD | 245.99 | 1.00
+5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
+8.00 | Portátil Yoga 520 | 559.00 | 2.00
```

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 42: Error
- **Descripción**: [Errno 2] No such file or directory: 'src/expected_results/query_42.out'

