// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicArrayPush{
    uint[] public numbers;
    function getAllElements() public view returns(uint[] memory){
        return numbers;
    }
    function addOne(uint value) public{
        numbers.push(value);
    }
    function addMultiple(uint[] calldata values) public {
        for(uint i=0;i<values.length;i++){
            numbers.push(values[i]);
        }
    }
    function pushAndGetlenthAndGetAllElements(uint value) public returns(uint,uint[] memory){
        numbers.push(value);
        return (numbers.length,numbers);
    }
}