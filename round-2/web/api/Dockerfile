FROM python:2

COPY requirements.txt /tmp/
COPY src/ /app/

RUN pip install -r /tmp/requirements.txt

WORKDIR /app

EXPOSE 80

ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:80", "-w", "4", "engine:app"]
