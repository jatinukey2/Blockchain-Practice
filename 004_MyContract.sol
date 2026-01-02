//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {
    string public OurString = "Hello World";
    
    function update_string(string memory NewString) public {
        OurString = NewString;
    }


}