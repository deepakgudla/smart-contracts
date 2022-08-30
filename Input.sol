/**
Description - user can perform mathematical operations based on input...........
 */

//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Input {
    uint256 number_one;
    uint256 number_two;

    function one(uint256 a) public {
        number_one = a;
    }

    function two(uint256 b) public {
        number_two = b;
    }

    function addition() public view returns(uint256) {
        uint answer = number_one + number_two;
        return answer;
    }
}