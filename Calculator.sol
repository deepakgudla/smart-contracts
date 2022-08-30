//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//this is a simple calculator program where for every arithmetic operation there is a function declared....
// a b c are state variables..


contract Calculator {

    uint a = 1;
    uint b = 2;
    uint c = 3;
    uint z = 4; // a, b and c are state variables...

    //addition function
function add() public view returns (uint) {
    uint p = a + b + c;
    return p;  //prints 6
    
}

//subtraction function
function subtract() public view returns(uint) {
    uint q = c - a;
    return q; //prints 2
}

//multiplication function
function multiply() public view returns(uint) {
    uint r  = a * b * c;
    return r; //prints 6
}

//division function..
function divison() public view returns(uint) {
    uint s = c / a;
    return s; //prints 3
}

function compute() public view returns (uint) {
    uint t = (a + b) % z;
    return t;
}

}

