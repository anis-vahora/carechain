const EHR = artifacts.require('EHR')
const SimpleStorage = artifacts.require('SimpleStorage')

module.exports = function (deployer) {
  deployer.deploy(EHR)
  deployer.deploy(SimpleStorage)
}
