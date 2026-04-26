// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AccessArray{
    uint[] public numbers=[10,20,30,40,50];
    function getElement(uint index) public view returns(uint){
        require(index<numbers.length,unicode"数组下标越界");
        return numbers[index];
    }
    function getFirst() public view returns(uint){
        require(numbers.length>0,unicode"数组为空");
        return numbers[0];
    }
     function getLast() public view returns(uint){
        require(numbers.length>0,unicode"数组为空");
        return numbers[numbers.length-1];
    }
    function safeGetElement(uint index) public view returns(bool,uint){
        require(numbers.length>0,unicode"数组为空");
        if (index>=numbers.length){
            return (false,0);
        }else{
            return (true,numbers[index]);
        }
    }
}