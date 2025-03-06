FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_boilerplate create-db
RUN flask_boilerplate populate-db
RUN flask_boilerplate add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_boilerplate", "run"]
