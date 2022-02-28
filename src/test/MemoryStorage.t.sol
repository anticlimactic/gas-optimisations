// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../MemoryStorage.sol";

contract MemoryStorageTest is DSTest {
    MemoryStorage ms;
    OptimisedMemoryStorage oms;

    function setUp() public {
        ms = new MemoryStorage();
        oms = new OptimisedMemoryStorage();
    }

    function testMemoryStorage() public {
        ms.operate();
        assertEq(ms.total(), 1000 * 1001 * 1002 * 1003 * 1004 * 1005);
    }

    function testOptimisedMemoryStorage() public {
        oms.operate();
        assertEq(oms.total(), 1000 * 1001 * 1002 * 1003 * 1004 * 1005);
    }
}
