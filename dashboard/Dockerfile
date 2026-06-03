FROM node:24-alpine AS build

WORKDIR /usr/src/app

ENV VITE_BEE_HOST=http://bee.swarm.dappnode:1633
ENV VITE_DEFAULT_RPC_URL=http://nethermind-xdai.dappnode:8545

RUN apk add git && \
    git clone https://github.com/ethersphere/bee-dashboard.git . && \
    corepack enable && corepack prepare pnpm@10 --activate && \
    pnpm install --frozen-lockfile --ignore-scripts && \
    pnpm run prepare

FROM node:24-alpine AS final

RUN corepack enable && npm install -g serve

WORKDIR /app

COPY --from=build /usr/src/app/build .

ENTRYPOINT ["serve","-l","80"]
