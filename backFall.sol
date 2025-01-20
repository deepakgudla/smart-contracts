//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
* fallback function are anonymous function..
defining fallback functions:-
* cannot have a name
* does not take any inputs
* does not return any outputs
* must be dedicated as external
-----
we need to use fallback functions because,
when we call a function that does not exist or 
send ether to a contract by send, transfer or call
statement: send and transfer method receives 2300 gas
but call method receives more i.e all of the gas,,,,,,
----
it is not recommnded to write much code in fallback function.
because, the function will fail if too much gas is used....
---
invoking send and transfer method results in 2300 gas which is enough to emit a log when
"event is decalred" ?
*/

contract backFall {

    event log(uint gas);

    fallback() external payable {

        emit log(gasleft());
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

/*
new contract will send ether to fallback contract which will trigger fallback functions...
*/

contract SendToFallback {

    function transferToFallback(address payable _to) public payable {
        //sending ether with the transfer method
        //will automatically transfer 2300 gas amount.....
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent,) = _to.call{value: msg.value}('');
        require(sent, 'sending failed');
    }
}
