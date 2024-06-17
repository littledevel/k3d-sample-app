# We are using mysql 8
FROM mysql:8
# Using a random root password
ENV MYSQL_RANDOM_ROOT_PASSWORD true

# and we create a db, a user and a password 
ENV MYSQL_DATABASE snm
ENV MYSQL_USER snm
ENV MYSQL_PASSWORD snm1234
VOLUME /var/lib/mysql
EXPOSE 3306