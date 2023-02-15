FROM python:3.7.13-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TZ=Asia/Taipei

RUN pip install --upgrade pip
RUN pip install fastapi==0.75.2 uvicorn==0.17.6

RUN mkdir /app
COPY . /app
WORKDIR /app

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
