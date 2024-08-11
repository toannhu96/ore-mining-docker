FROM rust:1.79-slim-buster

RUN apt update -y && \
    apt install cargo -y && \
    export PATH=/root/.cargo/bin:$PATH && \
    cargo install ore-cli && \
    rm -rf /var/lib/apt/lists/*

COPY wallet.json /root/wallet.json

COPY mine.sh /root/mine.sh

ENTRYPOINT ["sh", "/root/mine.sh"]
