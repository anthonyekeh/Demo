# Use an official Node.js image with a specified version
# FROM node:14

# Set the working directory inside the container
# WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# Install app dependencies
# RUN npm install

#Install pm2 globally
# RUN npm install pm2 -g

# Copy the rest of the application code
# COPY . .

# Expose port 5001
# EXPOSE 3000

# Command to run your application
# CMD ["pm2-runtime", "app.js"]
