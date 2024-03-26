FROM python:3.9-slim
WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r /app/requirements.txt

RUN pip install uvicorn

EXPOSE 8000

CMD ["uvicorn", "first:app", "--host", "0.0.0.0", "--port", "8000"]