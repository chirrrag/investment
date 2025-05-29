FROM python:3.14.0b1-alpine3.21

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY main.py /app/main.py

EXPOSE 8081

ENTRYPOINT ["python", "main.py"]
CMD ["python", "main.py"]
