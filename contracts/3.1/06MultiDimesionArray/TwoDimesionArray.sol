// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TwoDimesionArray{
    uint[][] public matrix;
    function getAllElement() public view returns(uint[][] memory){
        return matrix;
    }
    function addRow(uint[] calldata row) public returns(uint[][] memory) {
        matrix.push(row);
        return matrix;
    }
    function initialize() public {
        uint[] memory row1=new uint[](3);
        row1[0]=1;row1[1]=2;row1[2]=3;
        matrix.push(row1);
        uint[] memory row2=new uint[](3);
        row2[0]=4;row2[1]=5;row2[2]=6;
        matrix.push(row2);
        uint[] memory row3=new uint[](3);
        row3[0]=7;row3[1]=8;row3[2]=9;
        matrix.push(row3);
    }

    function getElement(uint row,uint col) public view returns(uint){
        require(row<matrix.length,unicode"超过数组最大行数");
        require(col<matrix[row].length,unicode"超过数组最大列数");
        return matrix[row][col];
    }

    function setElememt(uint row,uint col,uint value) public {
        require(row<matrix.length,unicode"超过数组最大行数");
        require(col<matrix[row].length,unicode"超过数组最大列数");
         matrix[row][col]=value;
    }
    function getDimesion() public view returns(uint rows,uint cols){
       rows=matrix.length;
       if (rows>0){
        cols=matrix[0].length;
       }else{
        cols=0;
       }
       return (rows,cols);
    }
}