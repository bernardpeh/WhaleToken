var WhaleToken = artifacts.require("./WhaleToken.sol");
var etherWallet = "0xAE411d79082A93812b4F246aA7EcF9a8Dd6EA940";

module.exports = function(deployer) {
  deployer.deploy(WhaleToken, etherWallet);
};
