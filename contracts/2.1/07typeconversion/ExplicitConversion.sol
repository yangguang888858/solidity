// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ExplicitConversion{
    function explicit() public pure returns(uint8){
        uint big=300;
        return uint8(big);
    }
}