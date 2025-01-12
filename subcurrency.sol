//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
functionality of the code:
*   this smart contract allows only its creator to create a new coin
    with different issuance shemes..
*   anyone can send coins to eachother without a need for regstering with a 
    username and password, bu a eth keypair is needed....
*/

//lesson 126

contract Coin {

    address public minter;
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);


    constructor() {
        minter = msg.sender;
    }
//with minting make new coins and send them to an address
// only  owner can send coins..

    function mint(address receiver, uint amount) public  {
        require(msg.sender == minter);
        balances[receiver] += amount;
        //balances[sender] -= amount
    }

    error insufficientBalance(uint requested, uint available);

    function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
