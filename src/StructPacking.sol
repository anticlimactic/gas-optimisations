// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

contract StructPacking {
    struct Point {
        uint128 a;
        uint256 b;
        uint128 c;
    }
    Point p;

    constructor (uint128 _a, uint256 _b, uint128 _c) {
        p = Point({a: _a, b: _b, c: _c});
    }

    function operate() public view returns (uint256, uint128) {
        return (p.b, p.a + p.c);
    }
}

contract OptimisedStructPacking {
    struct Point {
        uint256 b;
        uint128 a;
        uint128 c;
    }
    Point p;

    constructor (uint128 _a, uint256 _b, uint128 _c) {
        p = Point({a: _a, b: _b, c: _c});
    }

    function operate() public view returns (uint256, uint128) {
        return (p.b, p.a + p.c);
    }
}
