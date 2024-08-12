FROM rust:1.79-slim-buster

WORKDIR /app

RUN apt update -y && \
    apt install pkg-config libssl-dev cargo -y && \
    export PATH=/root/.cargo/bin:$PATH && \
    cargo install ore-cli && \
    rm -rf /var/lib/apt/lists/*

COPY wallet.json .

COPY claim.sh .

ENTRYPOINT ["sh", "claim.sh"]