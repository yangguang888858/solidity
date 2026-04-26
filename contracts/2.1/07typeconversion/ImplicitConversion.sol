// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ImplicitConversion{
    function implicit() public pure returns(uint,uint){
        uint8 small=10;
        uint big=small;

        uint16 small2=1000;
        uint big2=small2;
        return (big,big2);
    }
    
}