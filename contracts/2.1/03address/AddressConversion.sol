// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AddressConversion{
    //address-->address payable
    function address2PayableAddress(address addr) public pure returns(address){
        return payable(addr);
    }
     //address payable-->address
    function payableAddress2Address(address payable  addr) public pure returns(address){
        return address(addr);
    }
    //address-->uint160
    function address2Uint160(address addr) public pure returns(uint160){
        return uint160(addr);
    }
    //uint160-->address
    function uint1602Address(uint160 addr) public pure returns (address){
        return address(addr);
    }
}