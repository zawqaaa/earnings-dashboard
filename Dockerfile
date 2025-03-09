FROM python:3.9

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
























