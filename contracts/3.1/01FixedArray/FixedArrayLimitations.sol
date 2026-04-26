// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FixedArrayLimitations{
    uint[5] public numbers=[1,2,3,4,5];
    //定长数组不能push
    // function attempPush(uint value) public  returns(bool){
    //     numbers.push(value);
    //     return true;
    // }

   //定长数组不能pop
    // function attempPop() public  returns(bool){
    //     numbers.pop();
    //     return true;
    // }
    //定长数组可以将元素设置为0
    function resetElement(uint index) public returns(uint[5] memory){
        require(index<numbers.length,unicode"数组下标越界");
        delete numbers[index];
        return numbers;
    } 
}