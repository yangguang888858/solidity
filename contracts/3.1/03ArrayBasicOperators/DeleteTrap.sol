// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DeleteTrap{
    uint[] public numbers=[1,2,3,4,5];
    function deleteElement(uint index) public returns(uint[] memory){
        require(index<numbers.length,unicode"数组下标越界");
        delete numbers[index];
        return numbers;
    }
    function hasZero() public view returns(bool){
        for(uint i=0;i<numbers.length;i++){
            if (numbers[i]==0){
                return true;
            }
        }
        return false;
    }
}