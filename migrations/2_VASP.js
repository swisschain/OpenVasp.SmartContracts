const VASP = artifacts.require("VASP");
const VaspFactory = artifacts.require("VaspFactory");

module.exports = function(deployer) {
  deployer.deploy(VASP);
  deployer.deploy(VaspFactory);
};