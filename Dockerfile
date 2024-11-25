FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libsqlite3-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
RUN git clone https://github.com/mapbox/tippecanoe.git
WORKDIR /src/tippecanoe
RUN make -j
RUN make install

WORKDIR /app
COPY . .

ENTRYPOINT [ "/app/entrypoint.sh" ]