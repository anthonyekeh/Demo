# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
COPY . .
RUN yarn install
EXPOSE 3000
CMD ["pm2", " start", "app.js"]
# testing: welldone, testing again
