FROM python:3.9.17-slim

USER root

RUN apt-get update -y && \
    apt-get install -y iputils-ping

WORKDIR /service

# COPY ./main.py .
# COPY ./requirements.txt .
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

USER 1001

CMD [ "python", "main.py" ]
