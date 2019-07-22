FROM nsbruce/lsl

LABEL Nicholas Bruce nicholas@nicholasbruce.ca

WORKDIR /data

RUN pip install h5py pandas

VOLUME [ "/data" ]