// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract UnCheckedExample{
    function increment(uint x) public pure returns(uint){
        unchecked{
        return x+1;
        } 
    }
    function sumArray(uint[] calldata array) public pure returns (uint){
        uint sum=0;
        for(uint i=0;i<array.length;){
            sum+=array[i];
            unchecked{
                i++;
            }
        }
        return sum;
    }
}