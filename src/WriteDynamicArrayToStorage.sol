// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteDynamicArrayToStorage {
    uint256[] public writeHere;

    function main(uint256[] calldata x) external {
        assembly {
            // your code here
            // write the dynamic calldata array `x` to storage variable `writeHere`

            let offset := calldataload(0x04)

            let xFirstElementPos := add(offset, 0x04)

            let len := calldataload(xFirstElementPos)

            sstore(0x00, len)

            mstore(0x00, 0x00)

            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                sstore(add(keccak256(0x00, 0x20), i), calldataload(add(xFirstElementPos, mul(add(i, 1), 0x20))))
            }
        }
    }
}
