FROM python:3.9.2-slim
COPY . .
WORKDIR html
EXPOSE 3000
CMD python -m SimpleHTTPServer 3000
