# using pything 3.0 alpine (lean version of python)
FROM python:3.8-alpine

# python buffered running in 1 
ENV PYTHONUMBUFFERED 1

# copy a requirement file from source requirement file to docker image
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

# make a run directory app and copy the source app file to the docker image.
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# add a new user "user" and use this user to run the application.
RUN adduser -D user
# switch docker to use the user we just created, otherwise the application is using the root account.
USER user 
