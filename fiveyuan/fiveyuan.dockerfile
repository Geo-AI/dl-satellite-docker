FROM ubuntu:16.04    

# install dependencies    
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends\     
    build-essential \
    software-properties-common \
    python3 \
    python3-dev \
    python3-tk \
    python3-pip \
    build-essential \
    libfreetype6-dev \
    libpng12-dev \
    libzmq3-dev \
    libspatialindex-dev \
    libsm6 \
    vim \
    wget \
    git \
    && \    
    apt-get clean && \    
    rm -rf /var/lib/apt/lists/*    

# install gdal
RUN add-apt-repository -y ppa:ubuntugis/ppa && \ 
    apt update && \ 
    apt-get install -y --no-install-recommends gdal-bin libgdal-dev python3-gdal && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# install python package
RUN pip3 --no-cache-dir install setuptools && \
    pip3 --no-cache-dir install wheel && \
    pip3 --no-cache-dir install -i https://pypi.tuna.tsinghua.edu.cn/simple \
    Pillow \
    flask \
    ipykernel \
    numpy \
    rasterio==1.0a12 \
    mercantile \
    rio_toa \
    flask_cors \
    cachetools \
    pyyaml \
    rio-pansharpen \
    gevent \
    gunicorn \
    psycopg2 \
    redis \
    && \
RUN mkdir /workdir

WORKDIR "/workdir"
#COPY ./ ./
CMD ["./entrypoint.sh"]

