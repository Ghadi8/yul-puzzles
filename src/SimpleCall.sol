// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract SimpleCall {

    function main(address t) external payable {
        assembly {
            // your code here
            // call "t.foo()"
            // hint: "foo()" has function selector 0xc2985578
            
            mstore(0x00, shl(224, 0xc2985578))
            let result := call(gas(), t, 0, 0x00, 0x04, 0, 0)
            if iszero(result) {
                revert(0, 0)
            }
       }
    }
}