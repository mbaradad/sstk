FROM garthk/node-for-headless-webgl

MAINTAINER Manolis Savva <manolis.savva@gmail.com>

RUN apt-get update && apt-get install -y build-essential libxi-dev libglu1-mesa-dev libglew-dev libvips

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
RUN npm install

EXPOSE 8010

CMD ["bash"]
