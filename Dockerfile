FROM python:3.9

RUN pip install --upgrade pip
RUN pip install --upgrade build

COPY packaging_tutorial /packaging_tutorial
WORKDIR /packaging_tutorial
