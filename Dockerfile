FROM python:3.6

# RUN pip install bitmex-market-maker

RUN mkdir /app

COPY requirements.txt /app

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

RUN pip install -e $(pwd)

RUN marketmaker setup

COPY settings.py /app

CMD marketmaker
