FROM node:14.15.4-slim

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

ENV HOST 0.0.0.0
ENV PORT 3000

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]