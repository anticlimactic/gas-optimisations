// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../InternalFunctionCall.sol";

contract InternalFunctionCallTest is DSTest {
    InternalFunctionCall ifc;
    OptimisedInternalFunctionCall oifc;

    function setUp() public {
        ifc = new InternalFunctionCall();
        oifc = new OptimisedInternalFunctionCall();
    }

    function testInternalFunctionCall() public {
        ifc.func();
    }

    function testOptimisedInternalFunctionCall() public {
        oifc.func();
    }
}
