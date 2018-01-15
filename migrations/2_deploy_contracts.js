var WhaleToken = artifacts.require("./WhaleToken.sol");

module.exports = function(deployer) {
  deployer.deploy(WhaleToken);
};
