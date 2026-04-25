// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract CompareOperators{
    function compare() public pure returns(bool,bool,bool,bool,bool,bool){
        uint x=10;
        uint y=5;
        return (x==y,x!=y,x>y,x<y,x>=y,x<=y);
    }
}