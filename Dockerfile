FROM python:3.8-slim

ADD requirements.txt /code/srvHm/

ADD src/ /code/srvHm/

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", ".srvHm.py"]