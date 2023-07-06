// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemberRegistry {
    address public admin;
    mapping(address => string) public memberNames;
    mapping(string => bool) public members;

    event MemberAdded(string name);
    event MemberRemoved(string name);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can perform this action");
        _;
    }

    function addMember(string memory name) public onlyAdmin {
        require(bytes(name).length > 0, "Invalid member name");
        require(!members[name], "Member already exists");

        members[name] = true;
        memberNames[msg.sender] = name;
        emit MemberAdded(name);
    }

    function removeMember(address memberAddress) public onlyAdmin {
        string memory name = memberNames[memberAddress];
        require(bytes(name).length > 0, "Member does not exist");

        members[name] = false;
        delete memberNames[memberAddress];
        emit MemberRemoved(name);
    }
}
