// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ModifyArray{
    uint[] public numbers=[1,2,3,4,5];
    function modifyOne(uint index,uint value) public returns(uint[] memory){
        require(index<numbers.length,unicode"数组下标越界");
        numbers[index]=value;
        return numbers;
    }
    function increment(uint index) public returns(uint[] memory){
        require(index<numbers.length,unicode"数组下标越界");
        numbers[index]+=1;
        return numbers;
    }
    function updateMutiple(uint[] memory indexs,uint[] memory values) public returns(uint[] memory){
        require(indexs.length==values.length,unicode"数组长度不匹配");
        for(uint i=0;i<indexs.length;i++){
            require(indexs[i]<numbers.length,unicode"数组下标越界");
            numbers[indexs[i]]=values[i];
        }
        return numbers;
    }
    function resetAll() public returns(uint[] memory){
        delete numbers;
        return numbers;
    }
}