// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReturnTupleOfString {
    function main() external pure returns (string memory, string memory) {
        assembly {
            // your code here
            // return the tuple of string: ("Hello", "RareSkills")

            mstore(0x00, 0x40) // store offset of first string
            mstore(0x20, 0x80) // store offset of second string

            let lenString1 := 0x05
            let lenString2 := 0x0A

            mstore(0x40, lenString1)
            mstore(0x60, "Hello")

            mstore(0x80, lenString2)
            mstore(0xA0, "RareSkills")

            return(0x00, 0xC0)
        }
    }
}
