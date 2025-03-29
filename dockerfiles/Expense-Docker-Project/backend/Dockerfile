FROM node:alpine3.20
EXPOSE 8080
ENV DB_HOST="mysql"
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/backend && \
    chown -R expense:expense /opt/backend
WORKDIR /opt/backend
COPY package.json .
COPY *.js .
RUN npm install
USER expense
CMD ["node", "index.js"]

# FROM node:20.18.3-alpine3.20
# EXPOSE 8080
# ENV DB_HOST="mysql"
# RUN mkdir /opt/backend
# WORKDIR /opt/backend
# COPY package.json .
# COPY *.js .
# RUN npm install
# CMD ["node", "index.js"]

# before best practice

# FROM node:20
# EXPOSE 8080
# ENV DB_HOST="mysql"
# RUN mkdir /opt/backend
# WORKDIR /opt/backend
# COPY package.json .
# COPY *.js .
# RUN npm install
# CMD ["node", "index.js"]