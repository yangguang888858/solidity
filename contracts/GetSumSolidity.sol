// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GetSumSolidity{
    //memory存储
    function getSumMemory(uint[] memory data) public pure returns (uint){
        uint sum=0;
        for(uint i=0;i<data.length;i++){
            sum=sum+data[i];
        }
        return sum;
    }
      //calldate存储
    function getSumCalldata(uint[] calldata data) public pure returns (uint){
        uint sum=0;
        for(uint i=0;i<data.length;i++){
            sum=sum+data[i];
        }
        return sum;
    }
}