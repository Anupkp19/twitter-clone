FROM node:18.17.0

WORKDIR /usr/src/app

ENV DATABASE_URL "YOUR_DATABASE_URL"

ENV NEXTAUTH_SECRET "secret"

ENV NEXTAUTH_JWT_SECRET "secret"

COPY package*.json ./

RUN npm install \
    npm install prisma
COPY . .

RUN npx prisma generate

CMD ["npm", "run", "dev"]
