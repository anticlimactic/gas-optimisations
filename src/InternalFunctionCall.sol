// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract InternalFunctionCall {
    uint256[] public arr;

    function func() public {
        for (uint256 i = 0; i < 10; i++) {
            arr.push(i);
        }
    }
}

contract OptimisedInternalFunctionCall {
    uint256[] public arr;

    function func() public {
        _func();
    }

    function _func() internal {
        for (uint256 i = 0; i < 10; i++) {
            arr.push(i);
        }
    }
}
