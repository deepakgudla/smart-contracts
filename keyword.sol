//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
view functions ensure that they will not modify the state(return values)
pure functions ensure that they not read or modify the state(return calcuations)
*/

contract keyword {

    uint value;

    function setValue(uint _value) external {
        value = _value;
    }

    function getValue() external view returns(uint) {
        value +5;
        return value;
        //return 5+5;  with the help of pure function we can return any calculation
        //irrespective of function logic
    }
}
