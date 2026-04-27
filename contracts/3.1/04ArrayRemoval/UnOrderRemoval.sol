// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract UnOrderRemoval{
    uint[] public numbers=[1,2,3,4,5];
    function getAllElement() public view returns(uint[] memory){
        return numbers;
    }
    function unOrderRemoval(uint index) public  returns(uint[] memory){
                require(index<numbers.length,unicode"数组下标越界");
        numbers[index]=numbers[numbers.length-1];
        numbers.pop();
        return numbers;
    }
}