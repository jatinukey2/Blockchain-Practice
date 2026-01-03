//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract SampleContract {

    string public mystring = "Hello World";

    function change_string(string memory newstring) public payable {
        if(msg.value == 1 ether) {
            mystring = newstring;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}