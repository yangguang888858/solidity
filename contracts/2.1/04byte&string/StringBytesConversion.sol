// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StringBytesConversion{
    //string转bytes
    function string2Bytes(string memory str) public pure returns(bytes memory){
        return bytes(str);
    }
    //获取字符串长度
    function getStringLen(string memory str) public pure returns(uint){
        return bytes(str).length;
    }
    //bytes转string
    function bytes2String(bytes memory data) public pure returns(string memory){
        return string(data);
    }
}