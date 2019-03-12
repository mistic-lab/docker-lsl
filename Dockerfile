FROM debian:stable-slim

LABEL Nicholas Bruce nicholas@nicholasbruce.ca

WORKDIR /data

RUN apt-get update \
&& apt-get install --yes libatlas-base-dev liblapack-dev libatlas-dev fftw3 fftw3-dev libgdbm-dev libgdbm3 python-pip python-matplotlib subversion python-wxtools \
&& rm -rf /var/lib/apt/lists* \
&& pip install pyephem numpy scipy pyfits aipy pytz lsl ipython

VOLUME [ "/data" ]