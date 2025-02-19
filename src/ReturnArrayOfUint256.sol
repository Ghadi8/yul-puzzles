// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReturnArrayOfUint256 {
    function main(uint256 a, uint256 b, uint256 c) external pure returns (uint256[] memory) {
        assembly {
            // your code here
            // return an array of [a,b,c]

            let ptr := mload(0x40)

            let start := ptr

            let offset := 0x20
            let length := 0x03

            mstore(ptr, offset)
            ptr := add(ptr, 0x20)

            mstore(ptr, length)
            ptr := add(ptr, 0x20)

            mstore(ptr, a)
            ptr := add(ptr, 0x20)

            mstore(ptr, b)
            ptr := add(ptr, 0x20)

            mstore(ptr, c)
            ptr := add(ptr, 0x20)

            let size := sub(ptr, start)

            return(start, size)
           
        }
    }
}
