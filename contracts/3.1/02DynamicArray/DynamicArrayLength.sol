// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicArrayLength{
    uint[] public numbers;
    function getAllElements() public view returns(uint[] memory){
        return numbers;
    }
    function getLength() public view returns(uint){
        return numbers.length;
    }
    function isEmpty() public view returns(bool){
        return numbers.length==0;
    }
    function addAndGetLength(uint value) public returns(uint){
        numbers.push(value);
        return numbers.length;
    }
}