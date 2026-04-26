// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StringLimitations{
    string public str1="hello";
    string public str2="world";
    //不能直接比较
    // function compare() public pure returns(bool){
    //     return str1==str2;
    // }

//不能直接获取长度
    // function getLength() public view returns(string memory){
    //     return str1.length;
    // }
    //不能直接拼接
    // function concat() public view returns(string memory){
    //     return str1+str2;
    // }
}