// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FixedBytes{
    bytes1 public b1=0x01;
    bytes4 public b4=0x01234567;
    bytes32 public b32=0x1234567890123456789012345678901234567890123456789012345678901234;

//获取长度
    function getLen() public view returns(uint,uint,uint){
        return(b1.length,b4.length,b32.length);
    }
    //访问单个字节
    function accessByte() public view returns(bytes1){
        return b1[0];
    }

}