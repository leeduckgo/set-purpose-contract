pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract PurposeHandler {

  //event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps";
  address public owner = 0x7EF99B0E5bEb8ae42DbF126B40b87410a440a32a;
  // input 

  constructor() {

    // owner = msg.sender;
  }

  function setPurpose(string memory newPurpose) public {
      // about msg.sender:
      // https://cryptozombies.io/en/lesson/2/chapter/3
      // about require:
      // https://cryptozombies.io/en/lesson/2/chapter/4
      require( msg.sender == owner, "NOT THE OWNER!");

      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      //emit SetPurpose(msg.sender, purpose);
  }
}