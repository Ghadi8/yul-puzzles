// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReturnTupleOfUint256String {
    function main() external pure returns (uint256, string memory) {
        assembly {
            // your code here
            // return the tuple of (uint256 and string): (420, "RareSkills")

            mstore(0x00, 420)
            mstore(0x20, 0x40) // string offset
            mstore(0x40, 0xA) // string length
            mstore(0x60, "RareSkills") // string data
            return(0x00, 0x80)
        }
    }
}
