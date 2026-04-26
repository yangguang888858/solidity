// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TransferExample{
    //转账失败：有时间再研究
    receive() external payable { }
    function transerETH(address payable recipent,uint amount) public {
        recipent.transfer(amount);
    }
    function sendETH(address payable recipent,uint amount) public returns(bool){
        bool success=recipent.send(amount);
        require(success,unicode"sendETH()转账失败...");
        return success;
    }
    function callETH(address payable recipent,uint amount) public{
        (bool success,)=recipent.call{value:amount}("");
        require(success,unicode"callETH()转账失败>>>");
    }
}