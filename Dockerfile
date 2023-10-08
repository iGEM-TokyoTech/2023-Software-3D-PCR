FROM python:3.9.7-buster
# USER root

RUN apt-get update

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install jupyterlab
RUN pip install pandas
RUN pip install numpy
RUN pip install matplotlib
RUN pip install scipy

# WORKDIR /src