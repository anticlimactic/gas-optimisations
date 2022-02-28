// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract Operation {
    uint256 a = 1e6;
    uint256 b = 1e6;
    uint256 c;

    function operate() public {
        c = a * b;
    }
}

contract OptimisedOperation {
    uint256 a = 1e6;
    uint256 b = 1e6;
    uint256 c;

    function operate() public {
        unchecked {
            c = a * b;
        }
    }
}
