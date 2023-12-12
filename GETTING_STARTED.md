### Requirements

The Swarm mainnet uses Gnosis Chain (formerly xDai) for on-chain activities - therefore you **MUST** configure a Gnosis Chain RPC endpoint. This package **ASSUMES** that you have successfully configured and [installed the Nethermind xDai package](http://my.dappnode/#/installer/nethermind-xdai.dnp.dappnode.eth), but provides you an option to customize this (see below).

#### Custom RPC endpoint

If you wish to use a different RPC endpoint instead of [installing Nethermind xDai](http://my.dappnode/#/installer/nethermind-xdai.dnp.dappnode.eth), you must change the following options:

* Set bee's `BEE_BLOCKCHAIN_RPC_ENDPOINT` in the [config](http://my.dappnode/#/packages/swarm.public.dappnode.eth/config) to your desired Gnosis Chain RPC endpoint.
* Set the Bee Dashboard [Blockchain RPC URL](http://dashboard.swarm.public.dappnode/#/settings) to your desired Gnosis Chain RPC endpoint.

**NOTE: For the benefit of decentralization and blockchain health, it is recommended to run your own node.**

#### Network Ports

If you are running your DAppNode within a network that has a UPnP compatible router, the P2P port (1634) will automatically be forwarded by the router to the appropriate port on the DAppNode. Otherwise, to ensure optimal performance of your node, you should configure port forwarding of TCP port 1634 to the DAppNode's internal IP address.

### Funding your node

Since `bee` version `1.10.0`, the default funding requirements for `bee` are now set to `0`, meaning that you can run a full-node immediately with no initial downpayment, allowing you to provide storage, and access the swarm.

If you wish to receive rewards for providing storage, you can *stake* `xBZZ` to receive storage incentives. To do this, you will require xDai and `xBZZ`:

1. Get your node's gnosis chain address from the [dashboard](http://dashboard.swarm.public.dappnode/#/status). (Click the drop-down 'Connection to Blockchain').
2. Send `xDai` and `xBZZ` as required to your node's wallet. There's a [great guide](https://mirror.xyz/mfw.rndlabs.eth/1jRBTu8TIoOdbOJ1Xu8bWQsvYLmE7jTZTHvB8QOx2f0) on how much you may want to send, and how to go about purchasing `xBZZ`.

### Staking

Since `bee` version `1.10.0`, storage incentives have been activated for staking. The minimum to stake is `10 xBZZ`. Transfer at least this amount to your node's wallet using the methods above, and then you goto the Bee dashboard (shown below) to use a UI for staking your node in the storage incentives competition.

**CAUTION:** Remember that BZZ uses **16 decimals**.

### Bee Dashboard

This dashboard is a UI that allows to you work with your node easily. You can access it by clicking the "UI" link below or [here](http://dashboard.swarm.public.dappnode/).

By default, the node API links are preconfigured. You may customize these [settings](http://dashboard.swarm.public.dappnode/#/settings).

### Feedback and useful sites

If you have questions about Swarm on DAppNode, you may find @mfw78 on both the [Swarm Discord](https://discord.gg/vrhF9hbtUu) and [Dappnode Discord](https://discord.gg/N6q4MVQFGg). If you have any suggestions, bug fixes, PRs etc are welcome on the issue tracker as indicated below.

Sites that may be of interest:

* [OpenBZZ](http://bee.swarm.public.dappnode:1633/bzz/f2df005a24e39674e8f9ab80e81548a00224c89a109bf47a8bdb0448d9da7460/) (no ENS resolver configured), or [OpenBZZ](http://bee.swarm.public.dappnode:1633/bzz/openbzz.eth/) (with ENS resolver configured).
* [Wikipedia on Swarm](http://bee.swarm.public.dappnode:1633/bzz/dwikipedia.eth/)
* [OpenStreetMap](http://bee.swarm.public.dappnode:1633/bzz/fdfd170f73953bc262d936d3a5329b787980335dc0547032bb2a6239ebe95a76/)
