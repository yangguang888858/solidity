// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract IntegerOverflowProtection{
    function testIntegerOverflow() public pure returns(uint8){
        uint8 max=255;
        return max+1;
    }

    function testIntegerUnderflow() public pure returns(uint8){
        uint8 min=0;
        return min-1;
    }
}