FROM python:3.11-slim

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /home/flask

COPY hello_flask hello_flask
EXPOSE 5000/tcp

ENV FLASK_APP=hello_flask
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["flask"]
CMD ["run",  "--host=0.0.0.0"]
