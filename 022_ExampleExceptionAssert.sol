//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleExceptionAssert {
    mapping(address => uint8) public balanceReceived;

    function sendMoney() public payable {
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value); 
    }

    function withdrawMoney(address payable to, uint8 amount) public {
        require(amount <= balanceReceived[msg.sender],"Not Enough Funds, aborting!!!");
        balanceReceived[msg.sender] -= amount;
        to.transfer(amount);
    }
}
