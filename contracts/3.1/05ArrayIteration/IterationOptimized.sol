// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract IterationOptimized{
    uint[] public numbers;
    constructor(){
        for(uint i=1;i<=100;i++){
            numbers.push(i);
        }
    }
    function sumBad() public view returns(uint){
        uint sum=0;
        for(uint i=0;i<numbers.length;i++){
            sum+=numbers[i];
        }
        return sum;
    }

     function sumGood() public view returns(uint){
        uint sum=0;
        uint len=numbers.length;
        for(uint i=0;i<len;i++){
            sum+=numbers[i];
        }
        return sum;
    }
    function sumBetter() public view returns(uint){
        uint sum=0;
        uint len=numbers.length;
        for(uint i=0;i<len;){
            sum+=numbers[i];
            unchecked{
                i++;
            }
        }
        return sum;
    }
}