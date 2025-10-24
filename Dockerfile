# Use Node LTS alpine image for small footprint
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies first (cache layer)
COPY package.json package-lock.json* ./
RUN npm install --production --silent || npm install --silent

# Copy application source
COPY . .

# Expose application port
EXPOSE 3000

# Run the server
CMD ["node", "server.js"]
