//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleExceptionRequire {
    
    mapping(address => uint) public balanceReceived;

    function sendMoney() public payable {
        balanceReceived[msg.sender] = msg.value;
    }

    function withdrawMoney(address payable to, uint amount) public {
        require(amount<= balanceReceived[msg.sender],"Not enough funds, aborting!!!");
            balanceReceived[msg.sender] -= amount;
            to.transfer(amount);
        
    }
}