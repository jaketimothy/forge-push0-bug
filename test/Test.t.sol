// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "./MockToken.sol";

contract TestContract is Test {
    MockToken t;

    function setUp() public {
        t = new MockToken("Token", "TKN");
    }

    function testName() public {
        assertEq(t.name(), "Token");
    }
}