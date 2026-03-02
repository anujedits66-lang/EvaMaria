FROM python:3.8-slim-buster

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /EvaMaria

COPY requirements.txt .
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .
RUN chmod +x start.sh

CMD ["./start.sh"]
