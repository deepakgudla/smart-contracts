//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//this is a simple calculator program where for every arithmetic operation there is a function decalred.....
// a b c are state variables..


contract Calculator {

    uint a = 1;
    uint b = 2;
    uint c = 3; // a, b and c are state variables...

}

function add() public view returns (uint) {
    uint p = a + b + c;
    return p;
    
}

function subtract() public view returns(uint) {
    uint q = c - a;
    return q;
}

function multiply() public view returns(uint) {
    uint r  = a * b * c;
    return r;
}

function divison() public view returns(uint) {
    uint s = c / a;
    return s;
}