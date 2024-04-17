pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
  uint256 private storedData;

  function set(uint256 data) public {
    storedData = data;
  }

  function get() public view returns (uint256) {
    return storedData;
  }
}
