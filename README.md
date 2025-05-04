# 📘 Siglo 21 – Lectura de Canvas a EPUB

Convierte las lecturas del campus virtual de la **Universidad Siglo 21** a **formato EPUB** para leer sin conexión o enviarlas a tu Kindle / e‑reader.  
Ideal para estudiar desde el celular, organizar el material por módulos y evitar depender de la conexión.

![Preview](https://raw.githubusercontent.com/sanchocreativo/siglo21-lectura-canva-toepub/refs/heads/main/Screenshot%202025-05-04%20144217.png)


---

## ✅ ¿Qué hace este proyecto?

- Descarga lecturas embebidas en **Canvas** (iframes).
- Inserta un título limpio y centrado en cada archivo.
- Aplica un estilo propio mediante `custom.css`.
- Genera un archivo `.epub` por módulo.

---

## 🧰 Requisitos

- PC con **Windows**, **macOS** o **Linux**  
- Software instalado:  
  - [Git](https://git-scm.com/downloads)  
  - [Pandoc](https://pandoc.org/installing.html)

---

## 📦 Paso 1 – Clonar el repositorio

```
git clone https://github.com/sanchocreativo/siglo21-lectura-canva-toepub.git
cd siglo21-lectura-canva-toepub
```
o descargar el zip y guardarlo en algun lugar que te acuerdes ```https://github.com/sanchocreativo/siglo21-lectura-canva-toepub/archive/refs/heads/main.zip```

## ⚙️ Paso 2 – Verificar que Pandoc funcione

```pandoc --version```
Si ves la versión, ¡todo OK! ✅

##  🔎 Paso 3 – Conseguir la URL real (iframe)
Canvas muestra la lectura dentro de un iframe, por eso la URL del navegador no sirve.

Abrí la lectura del módulo.

Clic derecho → Inspeccionar (o F12).

Encontrá la línea con <iframe src="...">:
![Cómo obtener la URL del iframe](https://raw.githubusercontent.com/sanchocreativo/siglo21-lectura-canva-toepub/main/Screenshot%202025-05-04%20132019.png)



```<iframe src="https://meca.ues21.edu.ar/canvas/0GRADO1A24/tipografia1/L1/index.html">```
Copiá la URL completa de src.
Esa es la URL que debe usar el script.


##  🚀 Paso 4 – Ejecutar el script
5.1 Dar permisos de ejecución

```chmod +x convert_to_epub.sh```

5.2 Lanzar el script

para esto vamos a necesitar abrir git bash y correr el archivo sh en la carpeta donde dejaste el codigo.

Si descargaste el zip en chrome podes posicionarte en la carpeta download con el siguiente comando:

```cd Downloads```

y luego ejecutamos

```./convert_to_epub.sh```

esto va a correr y armar las 16 lecturas de epub:

![codigo corrido](https://raw.githubusercontent.com/sanchocreativo/siglo21-lectura-canva-toepub/refs/heads/main/Untitled.png)

##  🚀 Paso 5 Enviar al Kindle

Mandá el .epub a tu dirección @kindle.com
O usá la app oficial Send to Kindle
O sincronizá mediante cable con Calibre

