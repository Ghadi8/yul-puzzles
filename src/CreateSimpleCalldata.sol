// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract CreateSimpleCalldata {
    function main(bytes calldata deploymentBytecode) external returns (address) {
        assembly {
            // your code here
            // create a contract using the deploymentBytecode
            // return the address of the contract
            // hint: use the `create` opcode
            // hint: use calldatacopy to copy the deploymentBytecode to memory

            let offset := calldataload(0x04)
            let len := calldataload(add(0x04, offset))
            calldatacopy(0x00, add(offset, 0x24), len)
            let addr := create(0, 0x00, len)
            mstore(0x80, addr)
            return(0x80, 0x20)
        }
    }
}
