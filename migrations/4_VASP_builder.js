const VaspBuilder = artifacts.require("VaspBuilder");

module.exports = function(deployer) {
  deployer.deploy(VaspBuilder);
};