// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DangerousConversion{
    function dangerous() public pure returns(uint8,uint8){
        uint value1=255;
        uint value2=256;
        return (
            uint8(value1),
            uint8(value2)
        );
    }
}