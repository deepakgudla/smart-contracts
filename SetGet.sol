//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SetGet {
    string message;
    

//set method stores a value in blockchain...
function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }

    //get function retrieves/reads the data that has been set.....
    function getMessage() public view returns(string memory) {
        return message;
    }
}
