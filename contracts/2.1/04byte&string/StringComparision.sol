// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StringComparision{
    function compareStrings(string memory a,string memory b) public pure returns(bool){
        return keccak256(bytes(a))==keccak256(bytes(b));
    }

    function testCompareStrings() public pure returns(bool,bool){
        return (compareStrings("hello", "world"),compareStrings("hello", "hello"));
    }
}