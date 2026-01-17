//SPDX-License-Identifier:MIT

pragma solidity 0.8.14;

contract Sender {

    receive() external payable {}

    function WithdrawTransfer(address payable to) public {
        to.transfer(10);
    }

    function WithdrawSend(address payable to) public {
        // to.send(10);
        bool isSent = to.send(10);
        require(isSent,"Sending the funds was unsuccessfull");
    }
}

contract ReceiverNoAction {
    function balance() public view returns(uint) {
        return address(this).balance;
    }
    receive() external payable {}

}

contract ReceicerAction {
    uint public balancedReceived;

    receive() external payable {
        balancedReceived += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}