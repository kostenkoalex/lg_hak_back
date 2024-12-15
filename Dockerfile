FROM python:3.9-slim
WORKDIR /app

RUN apt-get update && apt-get install -y git

COPY . .

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]