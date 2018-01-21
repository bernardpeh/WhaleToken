Test ERC20 Token

## Ether client Installation

1. In mac,

```
brew tap paritytech/paritytech
brew install parity --stable
```

In terminal,

```
parity --warp --geth --force-ui --chain ropsten
```

Go to http://127.0.0.1:8180/ -> setup account

recovery phrase for account i used:

or use infura.io services

```
npm install truffle-hdwallet-provider
```

Then in metamask, create new acct under ropsten network

in truffle.js, add
```
var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "orange apple banana ... ";
module.exports = {
  networks: {
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/<INFURA_Access_Token>")
      },
      network_id: 3
    }   
  }
};
```
refer to http://truffleframework.com/tutorials/using-infura-custom-provider

2. To manage chain using geth command line, in a separate terminal,

```
// and use geth commands as per normal
geth attach 
or
truffle console
```

## Tips

* Get Free Ether - http://faucet.ropsten.be:3001/.

* Install solidity flattener to Flatten file for use to remix. In root dir,

```
# in doc root
solidity_flattener --solc-paths zeppelin-solidity=$(pwd)/node_modules/zeppelin-solidity contracts/WhaleToken.sol > flattened.sol
```
