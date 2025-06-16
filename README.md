# 🔐 DeFi Security Survey 

An IEEE-format research paper and hands-on demo collection focused on **vulnerabilities, attack vectors**, and **defensive mechanisms** in Decentralized Finance (DeFi).

By **Zaki Abadi Bin Puteh** and **Marshitah Binti Mazlan**  
Department of Information Systems, Hanyang University

---

## 📄 Paper Summary

This project includes an in-depth technical survey covering:

- ⚠️ Flash Loan Attacks
- ⚠️ Oracle Manipulation
- ⚠️ Reentrancy
- ⚠️ Miner Extractable Value (MEV)
- ✅ Defensive techniques (Auditing, Formal Verification, Bug Bounties, etc.)
- 🧪 Experiments with real attack simulations
- 📊 Real-world case studies (bZx, Mango Markets, Cream Finance, etc.)

---

## 🧪 Practical Demos (Solidity)

Each exploit is implemented in Remix-compatible Solidity with full documentation and result validation.

| Demo Folder               | Description                                             |
|---------------------------|---------------------------------------------------------|
| `reentrancy-demo`         | Recursive withdraw exploiting vulnerable contract       |
| `flashloan-demo`          | Atomic manipulation with uncollateralized flash loan    |
| `oracle-manipulation-demo`| Fake oracle price attack on a lending pool              |
| `formal-verification-demo`| Secure `SafeBank.sol` audit with Slither static analysis|

---

## 📁 Repository Contents

| File / Folder                    | Description                                       |
|----------------------------------|---------------------------------------------------|
| `DeFi_Security_Survey_Expanded.tex` | LaTeX source file for the IEEE-style paper        |
| `references.bib`                | Academic references in BibTeX format              |
| `README.md`                     | This file                                         |
| *(demo folders)*                | Solidity contracts, test scripts, logs            |

---

## 📊 Project Highlights

- ✅ Formal modeling of real-world DeFi hacks
- ✅ Remix + WSL + Slither static analysis workflows
- ✅ Ready-to-run Solidity code for each attack and fix
- ✅ Paper submitted in IEEE LaTeX format with full citation support

---

## 🔗 Repository Navigation

Use the folders for hands-on testing:

```bash
cd reentrancy-demo
cd flashloan-demo
cd oracle-manipulation-demo
cd formal-verification-demo
