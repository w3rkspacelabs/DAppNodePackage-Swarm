FROM node:alpine AS build

WORKDIR /usr/src/app

ENV REACT_APP_BEE_HOST=http://bee.swarm.public.dappnode:1633
ENV REACT_APP_DEFAULT_RPC_URL=http://nethermind-xdai.dappnode:8545

# get bee dashboard v0.30.0
RUN apk add git build-base python3 && \
    git clone https://github.com/ethersphere/bee-dashboard.git . && \
    git checkout 1249c0df71baec331cb3f2661e0a08648d924406 && \
    npm uninstall puppeteer && \
    npm ci && \
    npm run build

FROM node:alpine AS final

RUN npm i -g serve

WORKDIR /app

COPY --from=build /usr/src/app/build .

ENTRYPOINT ["serve","-l","80"]