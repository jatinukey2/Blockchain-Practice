//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract TheBlockchainMessenger {
    uint public message_counter;

    string public my_message;

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    function update_message(string memory new_message) public {
        if(msg.sender == owner){
            my_message = new_message;
            message_counter++;
        }
    }

}