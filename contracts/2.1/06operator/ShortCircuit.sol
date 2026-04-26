// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ShortCircuit{
    function andShortCircuit(uint x,uint y) public pure returns(bool){
        if (x!=0&&y/x>5){
            return true;
        }
        return false;
    }
    function orShortCircuit(bool c1,bool c2) public pure returns(bool){
        return c1||c2;
    }
    function safeTransfer(address recepient,uint amount) public view returns (bool){
        return recepient!=address(0)&&amount>0&&address(this).balance>=amount;
    }
}