# 🐞 Bug Bounty Report: Reentrancy Vulnerability

## Severity
**Critical**

## Summary
`VulnerableBank` contract allows an attacker to recursively drain funds due to external call before state update in `withdraw()`.

## Vulnerable Code
```solidity
(bool success, ) = msg.sender.call{value: amount}("");
balances[msg.sender] -= amount;
