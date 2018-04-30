FROM debian:stretch-slim

RUN mkdir /opt/tlm/ /opt/out
ADD files/tlmca /opt/tlm/
RUN chmod +x /opt/tlm/tlmca && ln -s /opt/tlm/tlmca /bin/tlmca && ln -s /opt/tlm/tlmca /bin/certstrap &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /opt/