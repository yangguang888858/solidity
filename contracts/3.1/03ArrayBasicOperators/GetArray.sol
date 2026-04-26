// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GetArray{
    uint[] public numbers;
    constructor() {
        numbers.push(1);
        numbers.push(2);
        numbers.push(3);
    }
    function getAll() public view returns(uint[] memory){
        return numbers;
    }
    function process() public view returns (uint[] memory){
        uint[] memory result=new uint[](numbers.length);
        for(uint i=0;i<numbers.length;i++){
            result[i]=numbers[i]*2;
        }
        return result;
    }
}