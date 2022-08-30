//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Owner {
    address owner;
    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;  //If line 11 returns true continue the logic written in onlyowner function...

    }

    modifier  costs(uint price) {
        require(msg.value >= price);
        _;
    }
}

contract Register is Owner {

    mapping (address => bool)  registeredAddresses;
    uint price;

    constructor(uint initialPrice) public {
        price = initialPrice;
    }
//adding "public payable costs(uint price)" results in the usage of modifier
    function register() public payable {
        registeredAddresses[msg.sender]  = true;
    }

    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}