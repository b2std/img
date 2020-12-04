FROM python:3.8

WORKDIR /code/srvHm

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

CMD ["python", ".srvHm.py"]