FROM python:latest
MAINTAINER kanewinter@github
ENV SRC_DIR=/usr/src/app/

RUN apt-get update -y && apt-get install -y python-pip

COPY ./Pipfile $WORKDIR

RUN pip install -r $WORKDIR/Pipfile

COPY ./code/* $SRC_DIR

CMD [ "python", "./mapIt2.py" ]
