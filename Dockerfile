# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies (if any)
RUN apk add --no-cache bash

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the application
# RUN node --max-old-space-size=2048 node_modules/.bin/nest buil


# Remove development dependencies
# RUN node server.js

# Expose the port the app runs on
EXPOSE 3003

# Define the command to run your app
CMD ["node", "server.js"]

