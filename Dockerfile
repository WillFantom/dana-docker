FROM --platform=amd64 ubuntu:22.04

WORKDIR /etc/dana
COPY dana/components components
COPY dana/dnc dnc
COPY dana/dana dana
RUN chmod +x dana dnc

ENV DANA_HOME=/etc/dana/
ENV PATH=$PATH:$DANA_HOME
