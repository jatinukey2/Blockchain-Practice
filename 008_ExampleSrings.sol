//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleString {
    string public my_string = "Hello world";

    function change_string(string memory new_string) public {
        my_string = new_string;
    }

    function compare_strings(string memory new_string1) public view returns(bool) {
        return keccak256(abi.encodePacked(my_string)) == keccak256(abi.encodePacked(new_string1));
    }
}