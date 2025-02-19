// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract BatchEvents {
    // EMIT ME!!!
    event MyEvent(address indexed emitter, bytes32 indexed id, uint256 num);

    function main(address[] memory emitters, bytes32[] memory ids, uint256[] memory nums) external {
        bytes32 eventSig = keccak256("MyEvent(address,bytes32,uint256)");
        assembly {
            // your code here
            // emit the `MyEvent(address,bytes32,uint256)` event
            // Assuming all arrays (emitters, ids, and nums) are of equal length.
            // iterate over the set of parameters and emit events based on the array length.

            let ptr := mload(0x40)

            let start := ptr

            let len := mload(emitters)

            for {let i := 0 } lt(i, len) {i := add(i, 1)} {
                let emitter := mload(add(emitters, mul(add(i, 1), 0x20)))

                let id := mload(add(ids, mul(add(i, 1), 0x20)))

                mstore(ptr, mload(add(nums, mul(add(i, 1), 0x20))))

                log3(ptr, 0x60, eventSig, emitter, id)

                ptr := add(ptr, 0x20)
                
            }
        }
    }
}
