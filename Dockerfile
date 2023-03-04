FROM node:19-alpine
WORKDIR /app
COPY . /app/
RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT [ "node", "/app/dist/server/entry.mjs" ]