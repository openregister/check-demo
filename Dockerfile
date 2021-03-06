FROM python:3.4.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements/* /usr/src/app/requirements/
RUN pip install -r requirements/dev.txt

COPY . /usr/src/app

CMD ["gunicorn", "--config=gunicorn.py", "check:app"]
