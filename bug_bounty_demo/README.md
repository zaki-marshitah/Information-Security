# Bug Bounty Demonstration: Reentrancy Vulnerability

This folder demonstrates how bug bounty hunters can identify and responsibly disclose a reentrancy bug in a DeFi smart contract.

## 🔐 Vulnerable Smart Contract

```solidity
function withdraw(uint256 amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    (bool success, ) = msg.sender.call{value: amount}("");
    require(success, "Transfer failed");
    balances[msg.sender] -= amount;
}
