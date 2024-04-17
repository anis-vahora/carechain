pragma solidity >=0.4.22 <0.9.0;

import 'truffle/Assert.sol';
import 'truffle/DeployedAddresses.sol';
import '../contracts/SimpleStorage.sol';

contract SimpleStorageTest {
  SimpleStorage simpleStorage;

  function setUp() public {
    simpleStorage = new SimpleStorage();
  }

  function testWriteValue() public {
    Assert.equal(simpleStorage.get(), 0, 'Contract should have 0 stored');
    simpleStorage.set(1);
    Assert.equal(simpleStorage.get(), 1, 'Contract should have 1 stored');
    simpleStorage.set(2);
    Assert.equal(simpleStorage.get(), 2, 'Contract should have 2 stored');
  }
}
