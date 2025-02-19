// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract CalculatorInFallback {
    uint256 public result;

    fallback() external {
        // your code here
        // compare the function selector in the calldata with the any of the selectors below, then
        // execute a logic based on the right function selector and store the result in `result` variable.
        // assumming operations won't overflow

        // add(uint256,uint256) -> 0x771602f7 (add two numbers and store result in storage)
        // sub(uint256,uint256) -> 0xb67d77c5 (sub two numbers and store result in storage)
        // mul(uint256,uint256) -> 0xc8a4ac9c (mul two numbers and store result in storage)
        // div(uint256,uint256) -> 0xa391c15b (div two numbers and store result in storage)
        assembly {
        let funcSelector := shr(224, calldataload(0x00))

        let firstUint := calldataload(0x04)

        let secondUint := calldataload(0x24)

        switch funcSelector
        case 0x771602f7 {
            sstore(0x00, add(firstUint, secondUint))
        }
        case 0xb67d77c5 {
            sstore(0x00, sub(firstUint, secondUint))
        }
        case 0xc8a4ac9c {
            sstore(0x00, mul(firstUint, secondUint))
        }
        case 0xa391c15b {
            sstore(0x00, div(firstUint, secondUint))
        }
    }
    }
}
