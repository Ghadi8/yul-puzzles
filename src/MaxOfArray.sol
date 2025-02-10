// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract MaxOfArray {
    mapping(uint256 => mapping (address => uint256)) s;
    function main(uint256[] memory arr) external pure returns (uint256) {
        assembly {
            // your code here
            // return the maximum value in the array
            // revert if array is empty

           let len := mload(arr) // array length
           if iszero(len) {
               revert(0, 0) // revert if array is empty
           }

           let firstElement := add(arr, 32) // first array element

           let maxValue := mload(firstElement) // initial max value

           for {let i:= 1} lt(i, len) {i := add(i, 1)} {
              let currentElement := mload(add(firstElement, mul(i, 32)))
                if gt(currentElement, maxValue) {
                    maxValue := currentElement
                }
           }

           let freeSpace := add(arr, 32)
           mstore(freeSpace, maxValue)
            return (freeSpace, 32)
        }
    }
}
