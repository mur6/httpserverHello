FROM python:3.7-alpine
ADD . .
CMD ["python3", "server.py"]
