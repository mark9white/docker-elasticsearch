FROM    node:4-wheezy

#We don't want the .npm cache to be stored in the image
VOLUME /root/.npm

# Install app dependencies
RUN apt-get update && apt-get install -qy --no-install-recommends libphash0-dev
WORKDIR /src
COPY package.json /src/package.json
RUN npm set progress=false && npm install

