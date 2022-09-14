FROM python:3.10

RUN mkdir /src
WORKDIR /src
ADD . /src

RUN pip3 install -r requirements.txt

RUN python3 ./MyDjangoProject/manage.py migrate

RUN apk add --no-cache bash

CMD python3 ./MyDjangoProject/manage.py runserver 0.0.0.0:8080