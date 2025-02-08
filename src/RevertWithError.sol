// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract RevertWithError {
    function main() external pure {
        assembly {
            // revert the function with an error of type `Error(string)`
            // use "RevertRevert" as error message
            // Hint: The error type is a predefined four bytes. See https://www.rareskills.io/post/try-catch-solidity

            mstore(0, shl(224, 0x08c379a0)) // Error(string) = 0x08c379a0  // size = 4 bytes
            mstore(0x04, 0x20) // offset to the location of the length of the string  // size = 4 + 32 bytes
            mstore(0x24, 0xc) // length of the string (12 bytes represented in hex as c  // size = 4 + 32 + 32
            mstore(0x44, "RevertRevert") // the string  // size = 4 + 32 + 32 + 32 = 100
            revert(0, 100) // revert with the error
        }
    }
}
