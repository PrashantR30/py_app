FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir fastapi
RUN pip install --no-cache-dir uvicorn

COPY . .

EXPOSE 8000

# Run command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
