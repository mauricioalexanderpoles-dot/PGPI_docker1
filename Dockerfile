FROM python:2.7-slim
WORKDIR /app
COPY requirements.txt app.py /app/
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV NAME Mauricio
CMD ["python", "app.py"]
