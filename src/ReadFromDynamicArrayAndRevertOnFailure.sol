// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReadFromDynamicArrayAndRevertOnFailure {
    uint256[] readMe;

    function setValue(uint256[] calldata x) external {
        readMe = x;
    }

    function main(int256 index) external view returns (uint256) {
        assembly {
            // your code here
            // read the value at the `index` in the dynamic array `readMe`
            // and return it
            // Revert with Solidity panic on failure, use error code 0x32 (out-of-bounds or negative index)
            // Hint: https://www.rareskills.io/post/solidity-dynamic

            mstore(0x00, shl(224, 0x4e487b71)) // with 0x4e487b71 being bytes4(keccak256("Panic(uint256)"))
            mstore(0x04, 0x32) // with 0x32 being the error code // size = 4 + 32 = 36

            if lt(index, 0) {
                revert(0, 0x24)
            }

            let len := sload(0)

            if iszero(lt(index, len)) { revert(0, 0x24) }

            mstore(0x00, 0x00)
            mstore(0x20, sload(add(keccak256(0x00, 0x20), index)))
            return(0x20, 0x20)
        }
    }
}
