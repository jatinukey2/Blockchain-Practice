//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MsgSender {
    address public my_address;

    function SetAddress() public {
         my_address = msg.sender;
    }
}