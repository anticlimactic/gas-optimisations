// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Operation.sol";

contract OperationTest is DSTest {
    Operation o;
    OptimisedOperation oo;

    function setUp() public {
        o = new Operation();
        oo = new OptimisedOperation();
    }

    function testOperation() public {
        o.operate();
    }

    function testOptimisedOperation() public {
        oo.operate();
    }
}
