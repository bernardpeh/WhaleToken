var whaleToken = artifacts.require("./WhaleToken.sol");
var etherWallet = "0xAE411d79082A93812b4F246aA7EcF9a8Dd6EA940";
var startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 100;
// launch time is 21-10-2017, 1300 hrs GMT
// var startTime = 1508590800;
var endTime = startTime + (604800000000000000000);
var rate = 5;
var cap = 990000000000000000000000;
var goal = 990000000000000000000000;

module.exports = function(deployer) {
  deployer.deploy(whaleToken, goal, cap, startTime, endTime, rate, etherWallet);
};
