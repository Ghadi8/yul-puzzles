// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReturnTupleOfStringUnit256 {
    function main() external pure returns (string memory, uint256) {
        assembly {
            // your code here
            // return the tuple of (string and uint256): ("RareSkills", 420)

            mstore(0x00, 0x40) // string offset
            mstore(0x20, 420)
            mstore(0x40, 0xA) // string length
            mstore(0x60, "RareSkills") // string data
            return(0x00, 0x80)
        }
    }
}
