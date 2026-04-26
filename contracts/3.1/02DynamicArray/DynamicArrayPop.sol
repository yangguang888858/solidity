// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicArrayPop{
    uint[] public numbers=[1,2,3,4,5];
    function popOne() public returns(uint){
        require(numbers.length>0,unicode"数组为空");
        numbers.pop();
        return numbers.length;
    }
    function popMutiple(uint count) public  returns(uint){
        require(count<=numbers.length,unicode"超过数组最大长度");
        for(uint i=0;i<numbers.length;i++){
            numbers.pop();
        }
        return numbers.length;
    }
    function popAndReturnLastElement() public returns(uint){
        require(numbers.length>0,unicode"数组为空");
        uint lastElement=numbers[numbers.length-1];
        numbers.pop();
        return lastElement;
    }

    function getAllElements() public view returns(uint[] memory){
        return numbers;
    }
}