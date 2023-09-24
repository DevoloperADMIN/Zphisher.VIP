FROM debian:latest
LABEL MAINTAINER="https://github.com/DevoloperADMIN/Zphisher.VIP"

WORKDIR /zphisher/
ADD . /zphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./zphisher.sh"]
