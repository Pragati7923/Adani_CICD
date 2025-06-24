# Use official Node.js image
FROM node:18

# Create working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port (Cloud Run sets this via $PORT)
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
