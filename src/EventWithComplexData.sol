// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract EventWithComplexData {
    // EMIT ME!!!
    event MyEvent(address indexed emitter, address[] players, uint256[] scores);

    function main(address emitter, address[] memory players, uint256[] memory scores) external {
        bytes32 eventSig = keccak256("MyEvent(address,address[],uint256[])");
        assembly {
            // your code here
            // emit the `MyEvent(address,address[],uint256[])` event
            // Hint: Use `log2` to emit the event with the hash as the topic0 and `emitter` as topic1, then the data

            let ptr := mload(0x40)

            let start := ptr

            // need to store array offset + length + data

            let playersLen := mload(players)
            let scoresLen := mload(scores)

            ptr := add(start, 0x40) // offset by 64 bytes

            let playersStart := ptr

            mstore(ptr, playersLen)
            ptr := add(ptr, 0x20)

            for {let i:= 0} lt(i, playersLen) {i:= add(i, 1)} {
                mstore(ptr, mload(add(players, mul(add(i, 1), 0x20))))

                ptr := add(ptr, 0x20)
            }

            let scoresStart := ptr

            mstore(ptr, scoresLen)
            ptr := add(ptr, 0x20)

            for {let i:= 0} lt(i, scoresLen) {i:= add(i, 1)} {
                mstore(ptr, mload(add(scores, mul(add(i, 1), 0x20))))

                ptr := add(ptr, 0x20)
            }

            mstore(start, sub(playersStart, start))

            mstore(add(start, 0x20), sub(scoresStart, start))

            let size := sub(ptr, start)

            log2(start, size, eventSig, emitter)
        }
    }
}
