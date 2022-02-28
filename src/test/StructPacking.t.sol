// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../StructPacking.sol";

contract StructPackingTest is DSTest {
    StructPacking sp;
    OptimisedStructPacking osp;

    function setUp() public {
        sp = new StructPacking(1000, 1000, 1000);
        osp = new OptimisedStructPacking(1000, 1000, 1000);
    }

    function testStructPacking() public {
        sp.operate();
    }

    function testOptimisedStructPacking() public {
        osp.operate();
    }
}
