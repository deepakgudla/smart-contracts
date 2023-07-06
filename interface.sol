//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Counter {
    uint public count;

    function increment() external {
        count +=1;
    }
}

interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

contract MyContract{
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();

    }

    function getCount(address _counter) external view returns(uint) {
        return ICounter(_counter).count();
    }
}