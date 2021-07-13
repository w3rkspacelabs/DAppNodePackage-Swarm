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

It's a UI that let you work with your node on a easy way.
Below you have an access link, you need to stay connected via VPN. In order to work properly, before you need to copy the container_IP where bee is runnin, you need to know the IP Container associated, go to Network tab, select the service **bee.dnp.dappnode.eth** and copy the Container IP

### Debug API

In order to use the Debug API, you need to know the IP Container associated, go to Network tab, select the service **bee.dnp.dappnode.eth** and copy the Container IP. When you are connected via VPN to your DAppNode, go to the next direction http://CONTAINER_IP:1635/peers
