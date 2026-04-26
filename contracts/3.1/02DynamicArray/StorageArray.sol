// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StorageArray{
    uint[] public storageArray;
    function addElement(uint value) public {
        storageArray.push(value);
    }
    function getAllElements() public view returns(uint[] memory){
        return storageArray;
    }
}