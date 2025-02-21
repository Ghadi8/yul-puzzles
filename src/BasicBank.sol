// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract BasicBank {
    // emit these
    event Deposit(address indexed depositor, uint256 amount);
    event Withdraw(address indexed withdrawer, uint256 amount);

    error InsufficientBalance();

    mapping(address => uint256) public balances;

    function deposit() external payable {
        bytes32 depositSelector = Deposit.selector;
        assembly {
            // emit Deposit(msg.sender, msg.value)
            // increment the balance of the msg.sender by msg.value
            let msgsender := caller()

            mstore(0x00, msgsender)
            mstore(0x20, 0x00)

            let sslot := keccak256(0x00, 0x40)

            let currentBalance := sload(sslot)

            sstore(sslot, add(currentBalance, callvalue()))

            mstore(0x40, callvalue())
            
            log2(0x40, 0x20, depositSelector, msgsender)
        }
    }

    function withdraw(uint256 amount) external returns (uint256 bal) {
        bytes32 withdrawSelector = Withdraw.selector;
        bytes4 insufficientBalanceSelector = InsufficientBalance.selector;
        assembly {
            // emit Withdraw(msg.sender, amount)
            // if the balance is less than amount, revert InsufficientBalance()
            // decrement the balance of the msg.sender by amount
            // send the amount to the msg.sender

            let msgsender := caller()

            mstore(0x00, msgsender)
            mstore(0x20, 0x00)

            let sslot := keccak256(0x00, 0x40)

            let currentBalance := sload(sslot)

            if gt(amount, currentBalance) {
                mstore(0x40, insufficientBalanceSelector)
                revert(0x40, 0x04)
            }

            let updatedBalance := sub(currentBalance, amount)

            sstore(sslot, updatedBalance)

            mstore(0x40, amount)

            log2(0x40, 0x20, withdrawSelector, msgsender)

            let result := call(gas(), msgsender, amount, 0, 0, 0, 0)

            if iszero(result) {
                revert(0x20, 0)
            }

            mstore(0x60, updatedBalance)
            return(0x60, 0x20)

        }
    }
}

