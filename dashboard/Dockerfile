FROM node:15.14-alpine AS build

WORKDIR /usr/src/app

ENV REACT_APP_BEE_HOST=http://bee.swarm.public.dappnode:1633
ENV REACT_APP_BEE_DEBUG_HOST=http://bee.swarm.public.dappnode:1635

RUN apk add git && \
    git clone https://github.com/ethersphere/bee-dashboard.git . && \
    npm ci && \
    npm run build

FROM node:15.14-alpine AS final

RUN npm i -g serve

WORKDIR /app

COPY --from=build /usr/src/app/build .

ENTRYPOINT ["serve","-l","80"]