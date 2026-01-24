//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract EventExample {

    mapping(address => uint) public tokenBalance;

    event TokensSent(address from, address to, uint amount);

    constructor() {
        tokenBalance[msg.sender] = 1000;
    }

    function sendToken( address to, uint amount) public returns(bool) {
        require(tokenBalance[msg.sender] >= amount, "Not sufficient funds");
        tokenBalance[msg.sender] -= amount;
        tokenBalance[to] += amount;

        emit TokensSent(msg.sender, to, amount);

        return true;
    }
}