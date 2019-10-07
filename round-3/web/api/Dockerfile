FROM python:2

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

COPY src/engine.py /app/engine.py

ENTRYPOINT ["python", "/app/engine.py"]

EXPOSE 80
