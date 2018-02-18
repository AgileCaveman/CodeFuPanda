var Adoption = artifacts.require("Adoption");
var Polling = artifacts.require("Polling");

module.exports = function(deployer2) {
  deployer2.deploy(Polling);
};
