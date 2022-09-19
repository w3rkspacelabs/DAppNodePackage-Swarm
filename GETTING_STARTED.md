## Swarm Testnet

### Requirements

The Swarm *testnet* uses the Görli (Goerli) Testnet for on-chain activities - therefore you **MUST** configure a Goerli RPC endpoint. This package **ASSUMES** that you have successfully configured and [installed the Goerli Geth package](http://my.dappnode/#/installer/goerli-geth.dnp.dappnode.eth), but provides you an option to customize this (see below).

#### Custom RPC endpoint

If you wish to use a different RPC endpoint instead of [installing Goerli Geth](http://my.dappnode/#/installer/goerli-geth.dnp.dappnode.eth), you must change the following options:

* Set bee's `BEE_SWAP_ENDPOINT` in the [config](http://my.dappnode/#/packages/swarm-testnet.public.dappnode.eth/config) to your desired Goerli RPC endpoint.
* Set the Bee Dashboard [Blockchain RPC URL](http://dashboard.swarm-testnet.public.dappnode/#/settings) to your desired Goerli RPC endpoint.

**NOTE: For the benefit of decentralization and blockchain health, it is recommended to run your own node.**

### Funding your node

When starting `bee` on the `testnet` Swarm, you will see messages like this on the [logs](http://my.dappnode/#/packages/swarm-testnet.public.dappnode.eth/logs):

```
"time"="2022-09-19 12:23:37.139144" "level"="warning" "logger"="node" "msg"="clef is not enabled; portability and security of your keys is sub optimal"
"time"="2022-09-19 12:23:37.808446" "level"="info" "logger"="node" "msg"="swarm public key" "public_key"="039da8cf70a603006bb7d316ec715999f19c55584e61bb2924c9bf701a5cc1d955"
"time"="2022-09-19 12:23:38.789794" "level"="info" "logger"="node" "msg"="pss public key" "public_key"="02d791c1e9b1363a3f7255aa2738518fbf976432339343c5bf2bcdb08200057118"
"time"="2022-09-19 12:23:38.789900" "level"="info" "logger"="node" "msg"="using ethereum address" "address"="0b7350e69ec1b52ac9eb101ab97a1c37a2161e0f"
"time"="2022-09-19 12:23:38.789946" "level"="info" "logger"="node" "msg"="bee version" "version"="1.8.1-577e2ec5"
"time"="2022-09-19 12:23:38.803714" "level"="info" "logger"="node" "msg"="starting with an enabled chain backend"
"time"="2022-09-19 12:23:38.806466" "level"="info" "logger"="node" "msg"="connected to ethereum backend" "version"="Geth/v1.10.21-stable-67109427/linux-amd64/go1.18.4"
"time"="2022-09-19 12:23:38.809090" "level"="info" "logger"="node" "msg"="starting debug server" "address"="[::]:1735"
"time"="2022-09-19 12:23:38.811030" "level"="info" "logger"="node" "msg"="using default factory address" "chain_id"=5 "factory_address"="73c412512e1ca0be3b89b77ab3466da6a1b9d273"
"time"="2022-09-19 12:23:38.821749" "level"="info" "logger"="node/chequebook" "msg"="no chequebook found, deploying new one."
"time"="2022-09-19 12:23:38.843481" "level"="warning" "logger"="node/chequebook" "msg"="cannot continue until there is at least min xDAI (for Gas) and at least min BZZ bridged on the xDAI network available on address" "min_xdai_amount"="4.865e-10" "min_bzz_amount"="1" "address"="0b7350e69ec1b52ac9eb101ab97a1c37a2161e0f"
"time"="2022-09-19 12:23:38.843540" "level"="warning" "logger"="node/chequebook" "msg"="learn how to fund your node by visiting our docs at https://docs.ethswarm.org/docs/installation/fund-your-node"
```

Fortunately, the Swarm Foundation have made funding your **testnet node** a relatively painless experience using a faucet on their [discord server](https://discord.gg/uNx2YmCuYD). 

1. Copy the ethereum address from the [logs](http://my.dappnode/#/packages/swarm-testnet.public.dappnode.eth/logs) (in the above example, this would be `0b7350e69ec1b52ac9eb101ab97a1c37a2161e0f`).
2. [Join the discord server](https://discord.gg/uNx2YmCuYD)
3. In any channel, use Swarm Bot to sprinkle the address from (1) by typing: `/faucet sprinkle addresses: 0b7350e69ec1b52ac9eb101ab97a1c37a2161e0f` (using your address).

It will take a few minutes for the `gBZZ` and GoerliETH to be deposited to the swarm node's address. The `bee` node will automatically detect this and commence initialization.

For more information on configuring the `bee` node, please refer to the [documentation](https://docs.ethswarm.org/docs/).

### Bee Dashboard

This dashboard is a UI that allows to you work with your node easily. You can access it by clicking the "UI" link below or [here](http://dashboard.swarm-testnet.public.dappnode/).

By default, the node API links are preconfigured. You may customize these [settings](http://dashboard.swarm-testnet.public.dappnode/#/settings).

If you have questions about Swarm on DAppNode, you may find @mfw78 on both the [Swarm Discord](https://discord.gg/vrhF9hbtUu) and [DAppNode Discord](https://discord.gg/N6q4MVQFGg). If you have any suggestions, bug fixes, PRs etc are welcome on the issue tracker as indicated below.