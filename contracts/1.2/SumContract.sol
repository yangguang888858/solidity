// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SumContract{
    //memory
    function getSumMemory(uint256[] memory data) public pure returns(uint256){
        uint sum=0;
        for(uint i=0;i<data.length;i++){
            sum+=data[i];
        }
        return sum;
    }
    //calldata
    function getSumCalldata(uint256[] memory data) public pure returns(uint256){
    uint sum=0;
    for(uint i=0;i<data.length;i++){
        sum+=data[i];
    }
    return sum;
    }
}