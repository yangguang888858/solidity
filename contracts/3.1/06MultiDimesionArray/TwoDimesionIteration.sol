// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TwoDimesionIteration{
    uint[][] public matrix;
    constructor(){
        for(uint i=0;i<3;i++){
            uint[] memory rows=new uint[](3);
            for(uint j=0;j<3;j++){
                rows[j]=i*3+j+1;
            }
            matrix.push(rows);
        }
    }
    function getSum() public view returns(uint){
        uint sum=0;
        uint rows=matrix.length;
        for(uint i=0;i<rows;i++){
            uint cols=matrix[i].length;
            for(uint j=0;j<cols;j++){
                sum+=matrix[i][j];
            }
        }
        return sum;
    }

    function findElement(uint value) public view returns(bool,uint,uint){
        for(uint i=0;i<matrix.length;i++){
            for(uint j=0;j<matrix[i].length;j++){
                if (matrix[i][j]==value){
                    return (true,i,j);
                }
            }
        }
        return (false,0,0);
    }
    function getRow(uint row) public view returns(uint[] memory){
        require(row<matrix.length,unicode"超过数组最大行数");
        return matrix[row];
    }
}