FROM python:3-slim
# prepare application libs
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
RUN mkdir /app
# copy our startup script
COPY /src/start.sh /app
RUN chmod +x /app/start.sh
# copy our python files
COPY src/*.py /app/

WORKDIR /app
# pass dynamically all vars through env 
# using docker network we can find the db ip by using hostname "db"
ENV DB_HOST db 
ENV DB_USER snm 
ENV DB_PASSWORD snm1234
ENV DB_NAME snm
ENV BACKEND_HOSTNAME 0.0.0.0
ENV BACKEND_PORT 5000
EXPOSE 5000
WORKDIR /app
CMD ["/bin/sh", "/app/start.sh"]

