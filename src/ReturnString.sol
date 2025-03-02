// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReturnString {
    function main() external pure returns (string memory) {
        assembly {
            // your code here
            // return the exact string: `Hello, RareSkills`

            let offset := 0x20
            mstore(0x00, offset)
            let len := 0x11
            mstore(0x20, len)

            mstore(0x40, "Hello, RareSkills")
            return(0x00, 0x60)
        }
    }
}
