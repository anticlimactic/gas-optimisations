// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

/// @dev read / write from storage variable is expensive
contract MemoryStorage {
    uint256 public total = 1000;

    function operate() public {
        for (uint256 i = 0; i < 5; i++) {
            total = total * (1001 + i);
        }
    }
}

/// @dev read / write from memory variable is cheaper
///      then when we are finished, we store in storage
contract OptimisedMemoryStorage {
    uint256 public total = 1000;

    function operate() public {
        uint256 tmp = total;
        for (uint256 i = 0; i < 5; i++) {
            tmp = tmp * (1001 + i);
        }
        total = tmp;
    }
}
