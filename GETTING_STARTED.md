### Description
Get rewarded for supporting the Swarm network with your free storage and bandwidth.

### Details
[Swarm](https://www.ethswarm.org/) is a decentralised data storage and distribution technology. Ready to power the next generation of censorship-resistant, unstoppable, serverless dapps.

By running a Swarm node on Dappnode, you help build a resilient, serverless web while **being rewarded with BZZ tokens** for your participation.

Learn about all you can do today with Swarm in the [Swarm documentation](https://docs.ethswarm.org/).

### Requirements

The Swarm mainnet uses [Gnosis Chain](https://www.gnosischain.com/) (formerly xDai) for on-chain activities - therefore you **MUST** configure a [Gnosis Chain RPC](https://docs.gnosischain.com/tools/RPC%20Providers/) endpoint. This package **ASSUMES** that you have successfully configured and [installed the Nethermind xDai package](http://my.dappnode/installer/dnp/nethermind-xdai.dnp.dappnode.eth), but provides you an option to customize this (see below).

#### Custom RPC endpoint

If you wish to use a different RPC endpoint instead of [installing Nethermind xDai](http://my.dappnode/installer/dnp/nethermind-xdai.dnp.dappnode.eth), you must change the following options:

* Set **Blockchain RPC Endpoint** in the [config](http://my.dappnode/packages/my/swarm.public.dappnode.eth/config) (or `BEE_BLOCKCHAIN_RPC_ENDPOINT` in the **Advanced Editor**) to your desired Gnosis Chain RPC endpoint.
* Set the Bee Dashboard [Blockchain RPC URL](http://dashboard.swarm.public.dappnode/#/settings) to your desired Gnosis Chain RPC endpoint.

**NOTE: For the benefit of decentralization and blockchain health, it is recommended to run your own Gnosis node.**

#### Network Ports

If you are running your DAppNode within a network that has a UPnP compatible router, the P2P port (`1634`) will automatically be forwarded by the router to the appropriate port on the DAppNode. Otherwise, to ensure optimal performance of your node, you should configure port forwarding of TCP port `1634` to the DAppNode's internal IP address.

### Funding your node

You can run a full-node immediately without any initial payment, allowing you to provide storage and access the Swarm network.

If you wish to earn rewards for providing storage, you can stake [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz) to participate in storage incentives. To do this, you’ll need both [xDai](https://docs.gnosischain.com/about/tokens/xdai) and [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz):

1. Get your node's gnosis chain address ("Node wallet address") from the [dashboard](http://dashboard.swarm.public.dappnode/#/account/wallet) .
2. Send [xDai](https://docs.gnosischain.com/about/tokens/xdai) and [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz) as required to your node's wallet. 

**Note:**
- You will need a minimum of `0.01` [xDAI](https://docs.gnosischain.com/about/tokens/xdai) for deploying the chequebook
- You will need a minimum of `10` [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz) for staking.


### Staking

To participate in the redistribution game and earn rewards, stake a minimum of `10` [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz) by transferring this amount to your node’s wallet. Then, goto the [Bee dashboard](http://dashboard.swarm.public.dappnode/#/account/staking) (Account/Staking) to use a UI for staking your node in the storage incentives competition.

**CAUTION:** Remember that bridged [xBZZ](https://docs.ethswarm.org/docs/learn/tokens#xbzz) (as well as [BZZ](https://docs.ethswarm.org/docs/learn/tokens#bzz)) uses **16 decimals**.

### Bee Dashboard

This dashboard is a UI that allows to you work with your node easily. You can access it by clicking the "UI" link below or [here](http://dashboard.swarm.public.dappnode/).

By default, the node API links are preconfigured. You may customize these [settings](http://dashboard.swarm.public.dappnode/#/settings).

### Feedback and Tech Support

If you have questions about Swarm on DAppNode, you can find help on both the [Swarm Discord](https://discord.ethswarm.org/) and [Dappnode Discord](https://discord.gg/invite/dappnode). If you have any suggestions, bug fixes, PRs etc are welcome on the issue tracker as indicated below.

