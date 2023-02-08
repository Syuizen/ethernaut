// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";

contract Attack {


    constructor (address gate2_address){
        GatekeeperTwo gate2 = GatekeeperTwo(gate2_address);

        uint64 _gateKey = uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max;

        gate2.enter(bytes8(_gateKey));
    }



}