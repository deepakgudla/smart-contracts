//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract If {
    uint btech = 4;

    function if_loop() public view returns(bool) {
        if(btech == 4) {
            return true;  //prints true;
        }
        else {
            return false;  //change the value in if statement and if you set other than 4 else condition comes into play
        }
    }
}