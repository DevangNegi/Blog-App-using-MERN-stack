FROM node:16.3.0-alpine
WORKDIR app
COPY . .
EXPOSE 3000
RUN cd server && npm install
RUN cd ../client && npm install
RUN cd ../server && npm start
RUN cd ../client && npm start
