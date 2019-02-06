FROM garthk/node-for-headless-webgl

MAINTAINER Manolis Savva <manolis.savva@gmail.com>

# Copy git source
COPY . /src

# Build client assets
WORKDIR /src
RUN ./build.sh

# Build server assets
WORKDIR /src/server
RUN npm install --unsafe-perm

# Change to ssc
WORKDIR /src/ssc
RUN npm install --unsafe-perm

EXPOSE 8010

CMD ["bash"]
