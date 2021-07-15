## How To Start

You'll see a message like this on the [logs](http://my.dappnode/#/packages/bee.dnp.dappnode.eth/logs):

```
time="2020-12-06T14:57:46Z" level=info msg="no chequebook found, deploying new one."
time="2020-12-06T14:57:46Z" level=warning msg="please make sure there is sufficient eth and bzz available on 770b135b11148830a7f918067f134a011e658d3c"
time="2020-12-06T14:57:46Z" level=warning msg="on goerli you can get both goerli eth and goerli bzz from https://faucet.ethswarm.org?address=770b135b11148830a7f918067f134a011e658d3c"
```

you need to go to the link that appears on the logs https://faucet.ethswarm.org?address=770b135b11148830a7f918067f134a011e658d3c to get some goerli eth and goerli bzz for your account (`770b135b11148830a7f918067f134a011e658d3c` in this example)

To get more info about swarm go to: [swarm docs](https://docs.ethswarm.org/)

### Bee Dashboard

It's a UI that let you work with your node easily. You can access it by clicking the link below or [here](http://dashboard.bee.dappnode:8080).

In **Status** tab, in the Node Setup:

- Connected to Node DebugAPI: you should change the endpoint for the URL http://bee.dappnode:1635 instead http://localhost:1635 .
- Connected to Node API: you should change the endpoint for the URL http://bee.dappnode:1633 instead http://localhost:1633

If you have questions about bee in DAppNode I recommend you to ask in the channel #bee of the DAppNode discord. In case the doubts are about bee, we recommend asking in the bee discord channel.
