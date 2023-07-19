//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//this is a simple calculator program where for every arithmetic operation there is a function declared....
// a b c are state variables..


contract Calculator {


    

    uint a; 
    uint b;
    uint c;
    uint z; // a, b and c are state variables...

    //addition function
function add(uint _a, uint _b, uint _c) public view returns (uint) {
    uint p = _a + _b + _c;
    return p;  //prints 6
    
}

//subtraction function
function subtract(uint _a, uint _c) public view returns(uint) {
    uint q = _c - _a;
    return q; //prints 2
}

//multiplication function
function multiply(uint _a, uint _b, uint _c) public view returns(uint) {
    uint r  = _a * _b * _c;
    return r; //prints 6
}

//division function..
function divison(uint _c, uint _a) public view returns(uint) {
    uint s = _c / _a;
    return s; //prints 3
}

function compute(uint _a, uint _b, uint _c, uint _z) public view returns (uint) {
    uint t = (_a + _b) % _z;
    return t;
}

}

// need to add require conditions.... and modify the code...
