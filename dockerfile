FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=8081
EXPOSE 8081
CMD [ "node", "server/server.js" ]