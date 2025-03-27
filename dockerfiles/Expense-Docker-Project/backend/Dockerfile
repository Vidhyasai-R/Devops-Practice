FROM node:20
EXPOSE 8080
ENV DB_HOST="mysql"
RUN mkdir /opt/backend
WORKDIR /opt/backend
COPY package.json .
COPY *.js .
RUN npm install
CMD ["node", "index.js"]