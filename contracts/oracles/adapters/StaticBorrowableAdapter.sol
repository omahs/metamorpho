// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IBorrowableAdapter} from "./interfaces/IBorrowableAdapter.sol";

import {OracleFeed} from "../libraries/OracleFeed.sol";

import {BaseOracle} from "../BaseOracle.sol";

abstract contract StaticBorrowableAdapter is BaseOracle {
    function BORROWABLE_FEED() external pure returns (string memory, address) {
        return (OracleFeed.STATIC, address(0));
    }

    function borrowableScale() public view virtual override returns (uint256) {
        return 1;
    }

    function borrowableToBasePrice() public view virtual override returns (uint256) {
        return 1;
    }
}
