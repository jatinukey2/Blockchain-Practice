//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleViewPure {
    uint public my_storage_variable;

    function view_uint() public view returns(uint) {
        return my_storage_variable;
    }

    function add_uint(uint a, uint b) public pure returns(uint) {
        return (a+b);

    }

    function change_uint(uint new_storage_variable) public {
        my_storage_variable = new_storage_variable;
    }
}