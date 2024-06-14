ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

WORKDIR /root

COPY data .

RUN chmod +x run.sh
RUN wget https://github.com/boringproxy/boringproxy/releases/download/v0.10.0/boringproxy-linux-arm
RUN mv boringproxy-linux-arm boringproxy && chmod +x boringproxy

CMD [ "./run.sh" ]
