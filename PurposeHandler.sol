pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

contract YourContract {

  //event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps";
  address public owner;

  constructor() {
    owner = msg.sender;
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public {
      require( msg.sender == owner, "NOT THE OWNER!");
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      //emit SetPurpose(msg.sender, purpose);
  }
}