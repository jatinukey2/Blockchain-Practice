//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyAddress {
    address public my_address;

    function set_address(address new_address) public {
        my_address = new_address;
    }

    function address_balance() public view returns(uint) {
        return my_address.balance;
    }
}