// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract IntOver{
    uint8 public x=255;
    function add() public{
        require(x<type(uint8).max,unicode"超过uint8的最大值");
        x = x + 1;
    }
}
