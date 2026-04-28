// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ArrayIteration{
    uint[] public numbers;
    constructor(){
        for(uint i=1;i<=10;i++){
            numbers.push(i);
        }
    }
    //基本遍历
    function iterateArray() public  view returns(uint){
        uint sum=0;
        for(uint i=0;i<numbers.length;i++){
            sum+=numbers[i];
        }
        return sum;
    }
    //查找元素
    function findElememt(uint value) public view returns(bool,uint){
        for(uint i=0;i<numbers.length;i++){
            if (numbers[i]==value){
              return (true,i);
            }
        }
        return (false,0);
    }
    //过滤元素
    function filterGreaterThan(uint value) public view returns(uint,uint[] memory){
        uint count=0;
        for(uint i=0;i<numbers.length;i++){
            if (numbers[i]>value){
                count++;
            }
        }
        uint[] memory filteredNumbers = new uint[](count);
        uint index=0;
        for(uint i=0;i<numbers.length;i++){
            if (numbers[i]>value){
                filteredNumbers[index]=numbers[i];
                index++;
            }
        }
        return (count,filteredNumbers);
    }

}