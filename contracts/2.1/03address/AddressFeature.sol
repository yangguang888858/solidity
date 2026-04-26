// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AddressFeature{
    //获取余额
    function getBalance(address addr) public view returns(uint){
        return addr.balance;
    }
    //获取合约地址
    function getContractAddress() public view returns(address){
        return address(this);
    }
    //获取合约余额
    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }
    //判断是否是零地址
    function isZeroAddress(address addr) public pure returns(bool){
        return addr==address(0);
    }
}