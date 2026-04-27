// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract RemovalCompare{
    uint[] public orderArray;
    uint[] public unorderArray;
    function init() public {
        delete orderArray;
        delete unorderArray;
        for (uint i = 1; i <= 100; i++) {
            orderArray.push(i);
            unorderArray.push(i);
        }
    }

    function getOrderArray() public view returns(uint[] memory){
        return  orderArray;
    }

     function getUnOrderArray() public view returns(uint[] memory){
        return  unorderArray;
    }

    function orderRemoval(uint index) public returns(uint[] memory){
        require(index>=50,unicode"没有足够的元素");
        for(uint i=index;i<orderArray.length-1;i++){
            orderArray[i]=orderArray[i+1];
        }
        orderArray.pop();
        return orderArray;
    }

    function unorderRemoval(uint index) public returns(uint[] memory){
        require(index>=50,unicode"没有足够的元素");
        unorderArray[index] = unorderArray[unorderArray.length-1];
        unorderArray.pop();
        return unorderArray;
    }
}