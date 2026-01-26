//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Owned {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        _;
    }
}