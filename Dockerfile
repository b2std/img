FROM python:3.8-slim

ADD requirements.txt /code/srvHm/

ADD src/ /code/srvHm/src/

RUN pip install -r /code/srvHm/requirements.txt

EXPOSE 8000

CMD ["python", "/code/srvHm/src/srvHm.py"]
