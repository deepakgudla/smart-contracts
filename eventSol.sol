 //SPDX-License-Identifier: MIT
 pragma solidity >=0.7.0 <0.9.0;

 contract eventSol {

    event NewTrade (uint indexed date, address from, address to, uint amount);

    function trade(address to, address from, uint amount) external {
        emit NewTrade(block.timestamp, from, to, amount);
        }

    function look() public view returns(uint) {
        return block.timestamp;
    }
 }