FROM python:3-slim
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
RUN mkdir /app
COPY src/*.py /app/
WORKDIR /app
CMD ["/usr/local/bin/python3", "/app/main.py"]