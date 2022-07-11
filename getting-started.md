## How To Start

### Mainnet

When starting `bee` on the `mainnet` Swarm, you will see messages like this on the [logs](http://my.dappnode/#/packages/swarm.public.dappnode.eth/logs):

```
time="2022-07-09T10:46:53Z" level=info msg="no chequebook found, deploying new one."
time="2022-07-09T10:46:54Z" level=warning msg="cannot continue until there is at least 0.000500 xDAI (for Gas) and at least 1 BZZ bridged on the xDAI network available on 1a984bc12fcae55aa02de19e2c43571ff8db0cd8"
```

Refer to the Swarm documentation for how to [fund your node](https://docs.ethswarm.org/docs/installation/fund-your-node).

### Testnet

You need to request some bzz and goerli, to do that you should access the Bee discord and request it. Copy the address you saw in your logs, in this case it would be:
1a984bc12fcae55aa02de19e2c43571ff8db0cd8. Go to Bee discord and type:
`/faucet sprinkle addresses: 1a984bc12fcae55aa02de19e2c43571ff8db0cd8` but using the address you copied. Once you did that the node will start to work.

To get more info about swarm go to: [swarm docs](https://docs.ethswarm.org/).

### Bee Dashboard

This dashboard is a UI that allows to you work wth your node easily. You can access it by clicking the link below or [here](http://dashboard.swarm.public.dappnode/).

By default, the node API links are preconfigured. As of the publication of this package however, you must manually specify an RPC endpoint.

In the [**Account** page](http://dashboard.swarm.public.dappnode/#/account/wallet/top-up):

- Enter an RPC endpoint as appropriate (e.g https://rpc.gnosischain.com for Gnosis Chain / Swarm mainnet).

If you have questions about Swarm in DAppNode, I am around on both the [Swarm Discord](https://discord.gg/vrhF9hbtUu) and [DAppNode Discord](https://discord.gg/N6q4MVQFGg). If you have any suggestions, bug fixes, PRs etc are welcome on the issue tracker as indicated below.