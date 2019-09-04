FROM python:3.7-alpine
ADD . .
EXPOSE 80
CMD ["python3", "server.py"]