# DAppNodePackage-bee

## **Ethereum Swarm Bee**
![avatar](swarm-avatar-min.png)

### What is Swarm?

Swarm is a decentralised storage and communication system for a sovereign digital society.

Swarm is a system of peer-to-peer networked nodes that create a decentralised storage and communication service.
The system is economically self-sustaining due to a built-in incentive system enforced through smart contracts on the Ethereum blockchain.

### How does it work?

Bee is a Swarm client implemented in Go. It’s the basic building block for the Swarm network.

You can get more information about the project on his official site https://www.ethswarm.org/

## Installing the package

### Connect
Connect to your Dappnode through Wireguard or OpenVPM

### Install package

#### Step 1. Visit the install link and wait for the package to load.
 - http://my.dappnode/installer/dnp/swarm.public.dappnode.eth

#### Step 2: Fix the "Not Signed" red flag
To fix the "Not Signed" red flag ("Unsafe origin, not signed"), you will need to add w3rkspacelab's key `0xdAD64d07A318476dc48257a0bB53a8e9a26C6B33` to the "Release trusted keys" on dappnode.

 - **Solution 1:** You may click "**ADVANCED OPTIONS**" on the Swarm package install page and enable "**Bypass only signed safe restriction**" one time to install or update the package. This is ideal for testing and development.
   > ![image](https://github.com/user-attachments/assets/c118da50-6d39-4777-9cec-16fe717ed08f)
 - **Solution 2:** For a more permanent solution, you can visit http://my.dappnode/system/advanced
   - scroll down to the "**Release trusted keys**" section
   - click "**Add new key**"
   > ![image](https://github.com/user-attachments/assets/482b7c6b-7b50-4ef0-881b-a5e1c3d24c4c)
   - Enter:
     - **Key name:**
       - `W3RKSPACE LABS`
     - **Package name suffix:**
       - `swarm.public.dappnode.eth`
     - **Signature protocol:**
       - `ECDSA_256`
     - **Key:**
       - `0xdAD64d07A318476dc48257a0bB53a8e9a26C6B33`
   - Click "**Submit Key**"
     > ![image](https://github.com/user-attachments/assets/86699463-caef-4e7b-873a-cb970e604de9)

#### Step 3: Install or Update your package
  - - http://my.dappnode/installer/dnp/swarm.public.dappnode.eth

## Development & Testing

```
git clone https://github.com/w3rkspacelabs/DAppNodePackage-Swarm
cd DAppNodePackage-Swarm
```

### Building the package

**Note:** Make sure `docker` or Docker desktop is running.

```
npx dappnodesdk build --provider http://ipfs.dappnode:5001/
```

**Output:**
```
(node:88443) ExperimentalWarning: Importing JSON modules is an experimental feature and might change at any time
(Use `node --trace-warnings ...` to show where the warning was created)
Validating files for swarm.public.dappnode.eth (version 2.2.0)
  ⠙ Validate files
  ✔ Validate files
  ✔ Validate files
  ✔ Verify connection
  ✔ Create release directories
  ✔ Copy files to release directory
  ✔ Build swarm.public.dappnode.eth (version 2.2.0) for arch linux/amd64
  ✔ Upload release for swarm.public.dappnode.eth to IPFS node
  ✔ Save upload results

          Dappnode Package (swarm.public.dappnode.eth) built and uploaded
          DNP name : swarm.public.dappnode.eth
          Release hash : /ipfs/QmeRxj9QtPAspCccx9qLR7zJ5QjYgSKTWUVLnUadhsz1Qf
          http://my.dappnode/installer/public/%2Fipfs%2FQmeRxj9QtPAspCccx9qLR7zJ5QjYgSKTWUVLnUadhsz1Qf
```

Open the IPFS url in the last line to install and test your package.

## Publishing your package

```
npx dappnodesdk publish --provider dappnode
```

## Troubleshooting common issues

### Issue: CliError: Invalid compose
**Solution:** Start Docker!
### Issue: Upload stuck during IPFS build
**Solution:** Clear IPFS cache!
