// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract PaymentSplitter {

    function main(address[] calldata recipients) external payable {
        assembly {
            // your code here
            // send the entire contract balance to the recipients
            // each recipient gets balance / recipients.length

            let offset := calldataload(0x04)

            let firstElementPos := add(offset, 0x04)

            let len := calldataload(firstElementPos)

            let amount := div(selfbalance(), len)

            for {let i:= 0} lt(i, len) {i := add(i, 1)} {
                let to := calldataload(add(firstElementPos, mul(add(i, 1), 0x20)))
                let result := call(gas(), to, amount, 0, 0, 0, 0)

                if iszero(result) {
                    revert(0, 0)
                }
            }


        }
    }
}