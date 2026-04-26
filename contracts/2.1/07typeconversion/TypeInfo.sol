// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TypeInfo{
    function getTypeInfo() public pure 
    returns(
        uint8,uint8,
        uint16,uint16,
        uint256,uint256,
        int8,int8,
        int16,int16,
        int256,int256
    ){
        return (
            type(uint8).max,type(uint8).min,
            type(uint16).max,type(uint16).min,
            type(uint256).max,type(uint256).min,
            type(int8).max,type(int8).min,
            type(int16).max,type(int16).min,
            type(int256).max,type(int256).min
        );
    }
}