//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleMapping2 {

    mapping(address => uint) public balanceReceived;

    function sendMoney () public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function getBalance () public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAllMoney (address payable to) public {
        uint balanceToSendOut = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        to.transfer(balanceToSendOut);
    }
}