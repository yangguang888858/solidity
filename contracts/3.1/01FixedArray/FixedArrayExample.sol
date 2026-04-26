// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FixedArrayExample{
    //uint定长数组
    uint[5] public fixedArray;
    //uint定长数组初始化
    uint[3] public fixedArrayInit=[1,2,3];
    //其他类型数组
    address[10] public addresses;
    bool[4] public flags=[true,false,true,false];
    bytes32[2] public bytesArray;
    string[2] public stringArray;
}