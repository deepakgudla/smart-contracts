//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

//abstract contract has both base and derived contracts....

//base contract

contract X {
    //since the function y has no implemetation/body it is abstract....
    function y() public view virtual returns(string memory) {}
}

//derived contract...
// we are inheriting from the base contract

contract Z is X {
    function y() public override view returns(string memory) {
        return 'hehe';
    }
}

//ba
contract Complex {
    string name;
    uint age = 20;

//since the setname function has no body it is virtual...
    function setName() public virtual returns (string memory){}  
    //close the function implementation and ; and mark contract as abstract
    //we can still execute house contract....
    function returnAge() public view returns(uint) {
        return age;
    }

    
}

contract House is Complex {
    function setName() public view override returns (string memory) {
        return 'solidity';
    }
}