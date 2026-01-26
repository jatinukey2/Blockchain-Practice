//SPDX-License-Ientifier: MIT

pragma solidity 0.8.14;

import "./029_Ownable.sol";

contract InheritanceModifierExample is Owned {
    mapping (address => uint) public tokenBalance;

    uint tokenPrice = 1 ether;

    constructor () {
        tokenBalance[msg.sender] = 100;
    }

    function createNewToken() public {
        require(owner == msg.sender, "You are not the owner");
        tokenBalance[owner]++;
    }

    function burnToken() public {
        require(owner == msg.sender, "You are not the owner");
        tokenBalance[owner]--;
    }

    function purchaseToken() public payable {
        require(tokenBalance[owner] * tokenPrice / msg.value > 0, "Not enough tokens");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }

    function sendToken(address to, uint amount) public {
        require(tokenBalance[msg.sender] >= amount, "Not enough tokens");
        tokenBalance[msg.sender] -= amount;
        tokenBalance[to] += amount;
    }
}