//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract WrapAround {
    uint256 public myuint; // 0 to (2^256)-1
    uint8 public myuint1 = 250; // 0 to (2^8)-1

    function changeUint(uint change_uint) public {
        myuint = change_uint;
    }

    function increment_uint() public {
        myuint++;
    }

    function decrement_uint() public {
        unchecked {
            myuint--;
        }
    }
}