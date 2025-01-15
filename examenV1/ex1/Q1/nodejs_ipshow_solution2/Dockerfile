
# Use an official Node.js runtime as the base image
FROM node:20-alpine3.17

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all application files to the container's working directory
COPY . .

# Expose the port that your Node.js application is listening on
EXPOSE 3000

# Set the command to run your Node.js application
CMD ["npm", "start"]
