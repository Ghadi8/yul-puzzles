// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract keccakX {
    function main(uint256 x) external pure returns (bytes32) {
        assembly {
            // your code here
            // return the keccak hash of x
            // Hint: use keccak256(offset, size)
            // Hint: you need to put x in memory first

            mstore(0, x)
            mstore(0x20, keccak256(0, 32))
            return(0x20, 32)

        }
    }
}
