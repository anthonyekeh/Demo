# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
RUN npm i --legacy-peer-deps
RUN npm i -g pm2 --legacy-peer-deps
EXPOSE 3000
CMD ["pm2-runtime", "start", "app.js"]