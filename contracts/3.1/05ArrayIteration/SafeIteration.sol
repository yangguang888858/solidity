// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SafeIteration{
    uint[] public numbers;
    uint public constant MAX_ARRAY_LENGTH=100;
    constructor(){
        for(uint i=1;i<=99;i++){
            numbers.push(i);
        }
    }
    function getAllElement() public view returns(uint,uint[] memory){
        return (numbers.length,numbers);
    }
    //安全push
    function safePush(uint value) public {
        require(numbers.length<MAX_ARRAY_LENGTH,unicode"数组已满");
        numbers.push(value);
    }
    //分批处理
    function batchProcess(uint start,uint end) public view returns(uint){
        require(start>=0,unicode"start小于数组最小下标");
        require(end<MAX_ARRAY_LENGTH,unicode"end大于数组最大下标");
        require((end-start)<=50,unicode"处理范围过大");
        uint sum=0;
        for(uint i=start;i<=end;i++){
            sum+=numbers[i];
        }
        return sum;
    }
    //分页查询
    function getByPage(uint page ,uint pageSize) public view returns(uint[] memory){
                require(page>=1,unicode"页码从1开始");
                require(pageSize<=20,unicode"每页数量过大");
                uint start=(page-1)*pageSize;
                require(start<numbers.length,unicode"页码超出范围");
                uint end=start+pageSize;
                uint[] memory result=new uint[](end-start);
                for(uint i=start;i<end;i++){
                    result[i-start]=numbers[i];
                }
                return result;
    }
}