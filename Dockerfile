# Creamos la imagen a partir de httpd, verisón 2.4
FROM httpd:2.4

# Damos información sobre la imagen que estamos creando
LABEL \
	version="1.0" \
	description="Apache2 + nano + index.html" \
	creationDate="23-11-2019" \
	maintainer="Nora San Saturnino <nsansaturnino@birt.eus>"

# Instalamos el editor nano
RUN \
	apt-get update \
	&& apt-get install nano

# Copiamos el index al directorio por defecto del servidor Web
COPY index.html /usr/local/apache2/htdocs/

# Indicamos el puerto que utiliza la imagen
EXPOSE 80