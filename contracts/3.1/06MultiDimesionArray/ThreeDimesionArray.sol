// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ThreeDimesionArray{
    uint[][][] public cube;
    function addPlane(uint[][] memory plane) public {
        cube.push(plane);
    }

    function getElement(uint x,uint y,uint z) public view returns(uint){
        require(x<cube.length,unicode"超过x最大范围");
        require(y<cube[x].length,unicode"超过y最大范围");
        require(z<cube[x][y].length,unicode"超过z最大范围");
        return cube[x][y][z];
    }
}