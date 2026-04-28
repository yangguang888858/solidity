// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ThreeDimesionAlternative{
    mapping(uint=>mapping (uint=>mapping(uint=>uint))) public threeDArrayAlternative; 
    function setElement(uint x,uint y,uint z,uint value) public{
        threeDArrayAlternative[x][y][z]=value;
    }
    function getElement(uint x,uint y,uint z) public view returns(uint){
        return threeDArrayAlternative[x][y][z];
    }
}