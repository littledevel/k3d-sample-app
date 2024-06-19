# We are using mysql 8
FROM mysql:8
# Using a random root password
ENV MYSQL_RANDOM_ROOT_PASSWORD true
ARG DB_PASSWORD
# and we create a db, a user and a password 
ENV MYSQL_DATABASE snm
ENV MYSQL_USER snm
ENV MYSQL_PASSWORD=$DB_PASSWORD
VOLUME /var/lib/mysql
EXPOSE 3306
