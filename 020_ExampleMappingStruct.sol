//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MappingStructExample {

    struct Transaction {
        uint amount;
        uint timestamp;
    } 

    struct Balance {
        uint totalBalance;
        uint numDeposits;
        mapping(uint => Transaction) deposits;
        uint numWithdrawals;
        mapping(uint => Transaction) withdrawals;
    }

    mapping (address => Balance) public balanceReceived;

    function getBalance(address addr) public view returns(uint) {
        return balanceReceived[addr].totalBalance;
    }

    function depositMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balanceReceived[msg.sender].deposits[balanceReceived[msg.sender].numDeposits] = deposit;
        balanceReceived[msg.sender].numDeposits++;
    }

    function withdrawMoney(address payable to, uint amount) public {
        balanceReceived[msg.sender].totalBalance -= amount;

        Transaction memory withdrawal = Transaction(amount,block.timestamp);
        balanceReceived[msg.sender].withdrawals[balanceReceived[msg.sender].numWithdrawals] = withdrawal;
        balanceReceived[msg.sender].numWithdrawals++;

        to.transfer(amount);
    }

}