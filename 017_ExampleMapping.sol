//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleMapping {

    mapping(uint => bool) public myMapping;

    mapping(address => bool) public myAddressMapping;

    mapping(uint => mapping(uint => bool)) public uintUintBoolMapping;

    function setValue(uint index) public {
        myMapping[index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }

    function setUintUintBoolMapping(uint key1, uint key2, bool value) public {
        uintUintBoolMapping[key1][key2] = value;
    }
}