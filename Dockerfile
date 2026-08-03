# Use the official Node.js image
FROM node:24

# Create a working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining project files
COPY . .

# Application runs on port 3000
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]