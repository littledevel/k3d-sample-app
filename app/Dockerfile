FROM python:3-slim

COPY requirements.txt /

RUN pip3 install -r /requirements.txt

RUN mkdir /app

COPY /src/start.sh /app
RUN chmod +x /app/start.sh

COPY src/*.py /app/

WORKDIR /app
ENV DB_HOST db 
ENV DB_USER snm 
ENV DB_PASSWORD snm1234
ENV DB_NAME snm
ENV APP_HOSTNAME 0.0.0.0
ENV APP_PORT 5000
EXPOSE 5000
WORKDIR /app

CMD ["/bin/sh", "./start.sh"]