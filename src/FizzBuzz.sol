// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract FizzBuzz {
    function main(uint256 num) external pure returns (string memory) {
        assembly {
            // your code here
            // if `num` is divisible by 3 return the word "fizz",
            // if divisible by 5 with the word "buzz",
            // if divisible by both 3 and 5 return the word "fizzbuzz",
            // else return an empty string "".

            // Assume `num` is greater than 0.

            let offset := 0x20
            mstore(0x00, offset)

            if iszero(mod(num, 15)) {
                let len := 0x08
                mstore(offset, len)
                mstore(add(offset, 0x20), "fizzbuzz")
                return(0x00, 0x60)
            }
            
            if iszero(mod(num, 3)) {
                let len := 0x04
                mstore(offset, len)
                mstore(add(offset, 0x20), "fizz")
                return(0x00, 0x60)
            }

            if iszero(mod(num, 5)) {
                let len := 0x04
                mstore(offset, len)
                mstore(add(offset, 0x20), "buzz")
                return(0x00, 0x60)
            }

        
            return(0x00, 0x60)

        }
    }
}
