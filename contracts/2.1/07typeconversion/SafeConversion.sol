// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SafeConversion{
    function safeConversionUint8(uint value) public pure returns(uint8){
        require(value<=type(uint8).max,unicode"大于uint8的最大值");
        require(value>=type(uint8).min,unicode"小于uint8的最小值");
        return uint8(value);
    }

    function getTypeInfo() public pure returns(uint8,uint8,int8,int8){
        return (
            type(uint8).max,
            type(uint8).min,
            type(int8).max,
            type(int8).min
        );
    }
}