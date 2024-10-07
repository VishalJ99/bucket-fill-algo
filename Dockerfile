FROM continuumio/miniconda3

RUN mkdir -p bucket-fill-algo

COPY . /bucket-fill-algo
WORKDIR /bucket-fill-algo

RUN conda env update --file environment.yml

RUN echo "conda activate bucket-fill-algo" >> ~/.bashrc
SHELL ["/bin/bash", "--login", "-c"]

RUN pre-commit install
