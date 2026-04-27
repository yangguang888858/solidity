// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract OrderRemoval{
    uint[] public numbers=[1,2,3,4,5];
    function getAllElement() public view returns(uint[] memory){
        return numbers;
    }
    function orderRemove(uint index) public returns(uint[] memory) {
        require(index<numbers.length,unicode"数组下标越界");
        for(uint i=index;i<numbers.length-1;i++){
            numbers[i]=numbers[i+1];
        }
        numbers.pop();
        return numbers;
    }
}