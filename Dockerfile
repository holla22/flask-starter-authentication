FROM python:3.6-buster
LABEL maintainer="Morne Zeelie"
WORKDIR /app
ADD . /app

RUN apt-get update && apt-get install vim -y
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8003/tcp
EXPOSE 80/tcp
EXPOSE 443/tcp

WORKDIR /app
ENTRYPOINT [ "./start_gunicorn_server.sh" ]