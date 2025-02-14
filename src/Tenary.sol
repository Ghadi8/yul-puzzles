// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Tenary {
    uint256 public result;

    function main(uint256 a, uint256 b, uint256 c) external {
        assembly {
            // your code here
            // store `10` in the storage variable `result` if a > b,
            // else if b > c, store `20`,
            // else, store `30`

            switch gt(a, b)
            case 1 { sstore(0, 10) }
            case 0 {
                switch gt(b, c)
                case 1 { sstore(0, 20) }
                case 0 { sstore(0, 30) }
            }
        }
    }
}
