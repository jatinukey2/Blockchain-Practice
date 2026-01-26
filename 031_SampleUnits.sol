//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract SampleUnits {

    modifier betweenOneAndTwoEth() {
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }

    uint runUntilTimeStamp;
    uint startTimeStamp;

    constructor(uint startInDays) {
        startTimeStamp = block.timestamp + (startInDays * 1 days);
        runUntilTimeStamp = startTimeStamp + (startInDays * 7 days);
    }
}