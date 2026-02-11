# Use a lightweight Node.js version
FROM node:18-alpine

# Create app directory inside the container
WORKDIR /app

# Install dependencies (Cached layer)
COPY package.json .
RUN npm install

# Copy source code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]