// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract LogicOperators{
    bool a=true;
    bool b=false;
    function logic() public view returns (bool,bool,bool){
        return (
            a&&b,
            a||b,
            !a
        );
    }
}