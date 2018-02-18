var Adoption = artifacts.require("Adoption");
var Polling = artifacts.require("Polling");

module.exports = function(deployer) {
  deployer.deploy(Polling);
};
