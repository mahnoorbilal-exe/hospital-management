FROM node:18-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy backend, frontend, and entry file
COPY backend/ ./backend/
COPY frontend/ ./frontend/
COPY server.js ./

EXPOSE 5000

CMD ["node", "server.js"]
