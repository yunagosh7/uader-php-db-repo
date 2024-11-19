# Usar la imagen oficial de MySQL
FROM mysql:8.0

RUN cargo build -r

# Establecer variables de entorno (opcional, pero recomendable)
# El password de root y el nombre de la base de datos inicial
ENV MYSQL_ROOT_PASSWORD=dbUserUader
ENV MYSQL_DATABASE=dbblog
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=dbUserUader

# Exponer el puerto predeterminado de MySQL
EXPOSE 3306

# Iniciar MySQL cuando se levante el contenedor
CMD ["mysqld"]
