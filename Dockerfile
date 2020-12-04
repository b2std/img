FROM alpine:latest

RUN apk update

RUN apk add python3

RUN apk add py3-pip

ADD requirements.txt /code/srvHm/

ADD src/ /code/srvHm/src/

RUN pip install -r /code/srvHm/requirements.txt

EXPOSE 8000

CMD ["python3", "/code/srvHm/src/srvHm.py"]
