// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicBytes{
    bytes public data;
    //添加元素
    function addBytes() public {
        data.push(0x12);
    }
    //获取长度
    function getLength() public view returns (uint256){
        return data.length;
    }
    //访问元素
    function accessBytes(uint index) public view returns(bytes1){
        require(index<data.length,unicode"数组下标越界");
        return data[index];
    }
    //删除元素
    function popBytes() public {
        require(data.length!=0,unicode"数组为空");
        data.pop();
    }
}