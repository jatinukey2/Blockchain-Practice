//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleConstructor {
    address public my_address;
    
    constructor (address address1) {
        my_address = address1;
    }
    function set_new_address(address new_address) public {
        my_address = new_address;
    }

    function set_address_msgSender() public {
        my_address = msg.sender;
    }


}
