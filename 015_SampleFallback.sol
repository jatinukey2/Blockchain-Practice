//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract SampleFallback {

    uint public lastValueSent;

    string public lastFunctionCalled;

    uint public myuint;

    function SetMyUint(uint newuint) public {
        myuint = newuint;
    }
    
    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}