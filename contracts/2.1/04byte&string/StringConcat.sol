// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StringConcat{
    function concat(string memory a,string memory b) public pure returns(string memory){
        return string.concat(a," ",b);
    }

    function testConcat() public pure returns(string memory){
        return concat("Hello","world!");
    }

    function concatMultiple() public pure returns(string memory){
        return string.concat("hello"," ","solidity"," ","world"," ","!");
    }
}