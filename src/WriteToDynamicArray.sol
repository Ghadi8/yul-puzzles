// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToDynamicArray {
    uint256[] writeHere;

    function main(uint256[] memory x) external {
        assembly {
            // your code here
            // store the values in the DYNAMIC array `x` in the storage variable `writeHere`
            // Hint: https://www.rareskills.io/post/solidity-dynamic

            let arrSize := mload(x) //load array size from memory
            sstore(0, arrSize) // store size in storage
            
            let arrPtr := keccak256(0, 32) // calculate the storage slot for the first element of the array

            for {let i:= 0} lt(i, arrSize) {i:= add(i, 1)} {
               let value := mload(add(x, mul(add(i,1), 32))) // value stored in memory

               sstore(add(arrPtr, i), value) 

            }
        }
    }

    function getter() external view returns (uint256[] memory) {
        return writeHere;
    }
}
