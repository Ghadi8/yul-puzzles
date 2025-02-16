// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToPackedDynamicArray64 {
    uint64[] public writeHere;

    function main(uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5) external {
        assembly {
            // your code here
            // write the code to store v1, v2, v3, v4, and v5 in the `writeHere` array in sequential order.
            // Hint: `writeHere` is a dynamic array, so you will need to access its length and use `mstore` or `sstore`
            // appropriately to push new values into the array.

            let len := sload(0x00)

            sstore(0x00, add(0x05, len))

            mstore(0x00, 0x00)

            let firstArrElement := keccak256(0x00, 0x20)

            let currentValue := shl(192, v4)
            currentValue := or(currentValue, shl(128, v3))
            currentValue := or(currentValue, shl(64, v2))
            currentValue := or(currentValue, v1)

            let firstPos := add(firstArrElement, len)

            sstore(firstPos, currentValue)
            sstore(add(firstPos, 0x01), v5)
        }
    }
}
