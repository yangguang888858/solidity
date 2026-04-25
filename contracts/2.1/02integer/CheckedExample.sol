// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract CheckedExample{
    function increment(uint x) public pure returns(uint){
        return x+1;
    }
    function sumArray(uint[] calldata array) public pure returns (uint){
        uint sum=0;
        for(uint i=0;i<array.length;i++){
            sum+=array[i];
        }
        return sum;
    }
}