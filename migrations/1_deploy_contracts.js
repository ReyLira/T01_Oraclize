const clima = artifacts.require("clima");

module.exports = function(deployer) {
  deployer.deploy(clima);
};
