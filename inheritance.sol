//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract A{
    uint innerVal = 10;

    function innerAddTen(uint val) public  pure returns(uint) {
        return val + 10;
    } 
}

contract B is A {
    function outerAddTen(uint val) public pure returns (uint) {
        return A.innerAddTen(val);
    }

    function see() public view returns (uint) {
        return A.innerVal;
    }
}
