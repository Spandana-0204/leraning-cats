FROM python:3.8

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir --no-index --find-links=wheelhouse_linux -r requirement.txt

EXPOSE 80

CMD ["python", "src/app.py"]