// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MemoryArray{
    function createMemoryArray() public pure returns(uint[] memory){
      uint[] memory arr=new uint[](5);
      arr[0]=1;
      arr[1]=2;
      arr[2]=3;
      arr[3]=4;
      arr[4]=5;
      return arr;
    }

// function memoryArrayLimitations() public{
//     uint[] memory arr=new uint[](5);
//     //memory array 是固定长度的数组
//     //不能push()
//     // arr.push(1);

//     //不能pop()
//     // arr.pop();

//     //不能改变数组长度
//     // arr.length=10;
// }
    
}