# Init
FROM node

# Install Essentials
RUN apt-get update &&\
    apt-get install -y redis-server

# Bundle app source
ADD . /opt
RUN cd /opt; npm install -g

# Add CoffeeScript
RUN npm install -g coffee-script

# Run ShareJS
EXPOSE 7007
CMD ["coffee", "/opt/examples/server.coffee"]
