FROM  pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

RUN apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip install . \
    && conda install -y -c conda-forge libsndfile