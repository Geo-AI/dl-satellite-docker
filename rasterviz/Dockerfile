FROM ubuntu:16.04    

ENV LANG C.UTF-8

# install dependencies and python3.6 
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends \     
            build-essential \
            software-properties-common && \
        add-apt-repository -y ppa:jonathonf/python-3.6 && \ 
        apt update && \
        apt-get install -y --no-install-recommends \
            python3.6 \ 
            python3.6-dev \
            python3.6-tk \
            python3-pip \
            python3.6-venv \
            libspatialindex-dev \
            vim \
        && \    
    apt-get clean && \    
    rm -rf /var/lib/apt/lists/*    

# install gdal
RUN add-apt-repository -y ppa:ubuntugis/ppa && \ 
    apt update && \ 
    apt-get install -y --no-install-recommends gdal-bin libgdal-dev python3-gdal && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python3.6 -m pip install pip --upgrade && \
    python3.6 -m pip install wheel
# install python package
RUN pip --no-cache-dir install setuptools && \
    pip --no-cache-dir install -i https://pypi.tuna.tsinghua.edu.cn/simple \
        ipykernel \
        Pillow==5.2.0 \
        Flask==1.0.2 \
        numpy==1.14.5 \
        rasterio==1.0.2 \
        gunicorn==19.8.1 \
        gevent==1.3.0



