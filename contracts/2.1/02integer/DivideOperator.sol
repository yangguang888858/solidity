// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DivideOperator{
    function divide() public pure returns (uint){
        uint a=10;
        uint b=3;
        return a/b;
    }

    function divideWithPrecision() public pure returns (uint){
        uint a=10*1000;
        uint b=3;
        return a/b;
    }
}