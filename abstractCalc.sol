//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
* an abstract base contract callled calculator with a read only function that returns integers
* creating a derived contract called Test which derives the calculator contract and can calculate 1 + 2 and return the result
 */

abstract contract Calculator {
    function getResult() public view virtual returns(uint);
 }

 contract Test is Calculator {
    function getResult() public override view returns(uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }
 }

