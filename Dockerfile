FROM node:18.17.0

WORKDIR /usr/src/app

ENV DATABASE_URL "mongodb+srv://anup:uOF9RmRvauFPqoPc@cluster0.j7qfseh.mongodb.net/twitter?retryWrites=true&w=majority"

ENV NEXTAUTH_SECRET "secret"

ENV NEXTAUTH_JWT_SECRET "secret"

COPY package*.json ./

RUN npm install \
    npm install prisma
COPY . .

RUN npx prisma generate

CMD ["npm", "run", "dev"]
