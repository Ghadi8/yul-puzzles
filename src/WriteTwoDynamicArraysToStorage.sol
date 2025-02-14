// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteTwoDynamicArraysToStorage {
    uint256[] public writeHere1;
    uint256[] public writeHere2;

    function main(uint256[] calldata x, uint256[] calldata y) external {
        assembly {
            // your code here
            // write the dynamic calldata array `x` to storage variable `writeHere1` and
            // dynamic calldata array `y` to storage variable `writeHere2`


            let xOffset := calldataload(0x04)
            let yOffset := calldataload(0x24)

            let xFirstElementPos := add(xOffset, 0x04)
            let yFirstElementPos := add(yOffset, 0x04)

            let xLen := calldataload(xFirstElementPos) // length is stored at first 32 bytes of array
            let yLen := calldataload(yFirstElementPos)

            sstore(0, xLen)
            sstore(1, yLen)

            mstore(0x00, 0)
            mstore(0x20, 1)

            for {let i := 0} lt(i, xLen) {i := add(i, 1)} {
                sstore(add(keccak256(0x00, 0x20), i), calldataload(add(xFirstElementPos, mul(add(i, 1), 0x20))))
            }

            for {let i:= 0} lt(i, yLen) {i := add(i, 1)} {
                sstore(add(keccak256(0x20, 0x20), i), calldataload(add(yFirstElementPos, mul(add(i, 1), 0x20))))
            }

        }
    }
}
