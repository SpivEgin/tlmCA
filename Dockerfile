FROM debian:stretch-slim

RUN mkdir /opt/tlm/
ADD files/certstrap /opt/tlm/
RUN chmod +x /opt/tlm/certstrap && ln -s /opt/tlm/certstrap /bin/certstrap &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD["/bin/certstrap"]