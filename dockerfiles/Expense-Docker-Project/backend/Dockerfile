FROM node:20.18.3-alpine3.20
EXPOSE 8080
ENV DB_HOST="localhost"
RUN mkdir /opt/backend
WORKDIR /opt/backend
COPY package.json .
COPY *.js .
RUN npm install
CMD ["node", "index.js"]