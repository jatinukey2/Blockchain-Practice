//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Uint {
    uint256 public myuint =  456; // 0 to (2^256)-1
    uint8 public myuint1 = 250; // 0 to (2^8)-1
    int public myint = 15; // - (2^128) to + (2^128)-1

    function changeUint(uint change_uint) public {
        myuint = change_uint;
    }

    function increment_uint() public {
        myuint++;
    }

    function increment_int() public {
        myint++;
    }

    function decrement_uint() public {
        myuint--;
    }
}