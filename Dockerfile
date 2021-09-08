FROM node:12
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install --save mysql

# RUN npx sequelize-cli db:migrate

COPY . .
EXPOSE 3000

# CMD ["npm", "start"]
