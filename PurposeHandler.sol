pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract PurposeHandler {

  //event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps";
  address public owner;

  constructor() {
    // about msg.sender:
    // https://cryptozombies.io/en/lesson/2/chapter/3
    owner = msg.sender;
  }

  function setPurpose(string memory newPurpose) public {
      // about require:
      // https://cryptozombies.io/en/lesson/2/chapter/4
      require( msg.sender == owner, "NOT THE OWNER!");

      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      //emit SetPurpose(msg.sender, purpose);
  }
}