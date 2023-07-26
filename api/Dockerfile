#  Dockerfile for Node Express Backend
FROM node:17-alpine

# Create App Directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Copy directory
COPY . .

# Install Dependencies
RUN npm install