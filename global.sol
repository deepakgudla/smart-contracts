//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract global {

    function calculate() public view returns(uint, uint, uint, uint, uint) {
            return ( block.chainid, block.difficulty, block.gaslimit, block.number, block.timestamp);


    }

}