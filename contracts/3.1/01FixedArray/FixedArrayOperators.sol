// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FixedArrayOperators{
    uint[5] public numbers;
    constructor(){
        numbers[0]=10;
        numbers[1]=20;
        numbers[2]=30;
        numbers[3]=40;
        numbers[4]=50;
    }
    function getElement(uint i) public view returns (uint){
        require(i<numbers.length,unicode"数组下标越界");
        return numbers[i];
    }
    function setElement(uint i,uint value) public  returns(bool){
        require(i<numbers.length,unicode"数组下标越界");
        numbers[i]=value;
        return true;
    }
    function getAllElement() public view returns(uint[5] memory){
        return numbers;
    }
    function getLenth() public view returns(uint){
        return numbers.length;
    }
}