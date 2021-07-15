FROM node:15.14-alpine AS build

WORKDIR /usr/src/app

RUN apk add git && \
    git clone https://github.com/ethersphere/bee-dashboard.git . && \
    npm ci && \
    npm run build

FROM node:15.14-alpine AS final

RUN npm i -g serve

WORKDIR /app

COPY --from=build /usr/src/app/build .

EXPOSE 8080

ENTRYPOINT ["serve","-l","8080"]