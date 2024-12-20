#Build stage
FROM node:20.1.0 AS build

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build













# #Production stage
# FROM node:20.1.0 AS production

# WORKDIR /app

# COPY package*.json .

# RUN npm ci --only=production

# COPY --from=build /app/dist ./build

# CMD ["node", "build/index.js"]