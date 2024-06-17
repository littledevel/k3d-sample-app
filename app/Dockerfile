FROM python:3-slim AS prod
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
RUN mkdir /app
COPY src/*.py /app/
COPY src/start.sh /app
WORKDIR /app
RUN chmod +x /app/start.sh
ENV DB_HOST db
ENV DB_USER snm
ENV DB_PASSWORD snm1234
ENV DB_NAME snm
ENV APP_PORT 5000
EXPOSE 5000
ENTRYPOINT [ "/bin/sh","./start.sh" ]
