# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["pm2 start", "app.js"]
EXPOSE 3000
# testing: welldone, testing again
