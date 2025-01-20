//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Oracle {
    address admin;
    uint public rand;

    constructor() public {
        admin = msg.sender;
    }

    function feedrand(uint) external {
        require(msg.sender == admin);
        rand = rand;
    }
}


contract randomNumberGenerator {

    Oracle oracle;

    constructor(address oracleaddress) {
        oracle = Oracle(oracleaddress);
    }

    function rand(uint) external view returns(uint) { //add uint range n functon arguments to get the range of the hash....
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.number, msg.sender))); // % range;
    }
} 

// first deploy the  oracle contract and copy the contract address....
// now deploy the randomNumberGenerator contract by pasting the oracle contract address in the deploy placeholder...
//enter uint number to get the random number
