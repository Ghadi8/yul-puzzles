// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract RevertWithPanic {
    function main() external pure {
        assembly {
            // your code here
            // revert the function with an error of type `Panic(uint256)`
            // use "0x01" as error code
            // Hint: The error type is built-in and cannot be re-defined. See https://www.rareskills.io/post/try-catch-solidity

            mstore(0, shl(224, 0x4e487b71)) // with 0x4e487b71 being bytes4(keccak256("Panic(uint256)"))
            mstore(0x04, 0x01) // with 0x01 being the error code // size = 4 + 32 = 36
            revert(0, 36)
        }
    }
}
