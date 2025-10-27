// contracts/Treasury.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Treasury {
    address public dao;
    constructor(){ dao=msg.sender; }
    receive() external payable {}
    function withdraw(address payable to,uint256 amt) external {
        require(msg.sender==dao); to.transfer(amt);
    }
}
