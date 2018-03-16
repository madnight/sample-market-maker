FROM python:3.6

# RUN pip install bitmex-market-maker

COPY sample-market-maker /app
WORKDIR /app

RUN pip install -e $(pwd)

RUN marketmaker setup

COPY settings.py /app

CMD marketmaker
