# app/Dockerfile

FROM python:3.9-slim

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8501
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health
ENTRYPOINT ["streamlit", "run", "uber_pickups.py", "--server.port=8501", "--server.address=0.0.0.0"]