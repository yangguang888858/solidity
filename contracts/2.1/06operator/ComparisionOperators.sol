// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ComparisionOperators{
    function comparision() public pure returns(bool,bool,bool,bool,bool,bool){
        uint  a=10;
        uint  b=5;
        return (
            a==b,
            a!=b,
            a>b,
            a<b,
            a>=b,
            a<=b
        );
    }
}