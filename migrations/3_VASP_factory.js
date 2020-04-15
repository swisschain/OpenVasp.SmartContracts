const VaspFactory = artifacts.require("VaspFactory");

module.exports = function(deployer) {
  deployer.deploy(VaspFactory);
};