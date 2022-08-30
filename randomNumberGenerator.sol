//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
*   buildng a random number generator which takes an input
    and uses cryptographc hashing..
* - with the modulo operator , by computing against the remainder, we will generate a random number withn the range


*/

contract randomNumberGenerator {

    function rand(uint) external view returns(uint) { //add uint range n functon arguments to get the range of the hash....
        return uint(keccak256(abi.encodePacked(block.timestamp, block.number, msg.sender))); // % range;
    }

} 