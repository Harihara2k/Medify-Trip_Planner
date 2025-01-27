FROM python:3.12-alpine

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

EXPOSE 8050

 
CMD ["python", "app.py"]