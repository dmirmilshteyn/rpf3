FROM node:20

WORKDIR /app/

COPY ["app/package.json", "app/yarn.lock", "./"]

RUN yarn install

COPY app .

CMD yarn run dev --host 0.0.0.0