// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DangerousIteration{
    uint[] public numbers;
    function addData(uint value) public{
        numbers.push(value);
    }
    function addBatchData(uint number) public returns(uint[] memory) {
        for(uint i=1;i<=number;i++){
            addData(i);
        }
        return numbers;
    }
    function getSum() public view returns (uint){
        uint sum=0;
        for(uint i=0;i<numbers.length;i++){
            sum+=numbers[i];
        }
        return sum;
    }
}