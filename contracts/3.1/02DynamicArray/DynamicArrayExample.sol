// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DynamicArrayExample{
    uint[] public numbers;
    address[] public addresses=[
        0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,
        0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    ];
    string[] public names;
    bool[] public flags;
    bytes32[]public hashes;
    constructor(){
        numbers.push(1);
        numbers.push(2);
        numbers.push(3);
    }
}