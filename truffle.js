var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "infant...";

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/api_key")
      },
      network_id: "3",
      gas: 4700000
    },
    main: {
        host: "localhost",
        port: 8545,
        network_id: "1",
        gasPrice: 20000000000
    }
  }
};
