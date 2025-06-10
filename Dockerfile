FROM node:16 AS build

WORKDIR /app

COPY package* index.js .

RUN npm ci --omit=optional --omit=dev

FROM gcr.io/distroless/nodejs:16

COPY --from=build /app /app

WORKDIR /app

EXPOSE 8080

USER nonroot

CMD ["index.js"]
