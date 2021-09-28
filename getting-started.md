## How To Start

You'll see a message like this on the [logs](http://my.dappnode/#/packages/bee.dnp.dappnode.eth/logs):

```
time="2021-09-28T12:03:02Z" level=info msg="no chequebook found, deploying new one."
time="2021-09-28T12:03:02Z" level=warning msg="cannot continue until there is sufficient ETH (for Gas) and at least 1 BZZ available on b257291e0f2352asef7774b1b761cd212d0bc220"
time="2021-09-28T12:03:02Z" level=warning msg="learn how to fund your node by visiting our docs at https://docs.ethswarm.org/docs/installation/fund-your-node"
```

You need to request some bzz and goerli, to do that you should access the Bee discord and request it. Copy the address you saw in your logs, in this case it would be:
b257291e0f2352asef7774b1b761cd212d0bc220. Go to Bee discord and type:
`/faucet sprinkle addresses: b257291e0f2352asef7774b1b761cd212d0bc220` but using the address you copied. Once you did that the node will start to work.

To get more info about swarm go to: [swarm docs](https://docs.ethswarm.org/).

You can obtain more infor how to setup a node on our [bee forum guide](https://forum.dappnode.io/t/bee-node-configuration/1016)

### Bee Dashboard

It's a UI that let you work with your node easily. You can access it by clicking the link below or [here](http://dashboard.bee.dappnode:8080).

In **Status** tab, in the Node Setup:

- Connected to Node DebugAPI: you should change the endpoint for the URL http://bee.dappnode:1635 instead http://localhost:1635 .
- Connected to Node API: you should change the endpoint for the URL http://bee.dappnode:1633 instead http://localhost:1633

If you have questions about bee in DAppNode I recommend you to ask in the channel #bee of the DAppNode discord. In case the doubts are about bee, we recommend asking in the bee discord channel.
