// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SpecialAddress{
    //msg.sender 当前调用者的地址
    //tx.origin 最原始的调用者的地址
    //address(this) 当前合约的地址
    function getSpecialAddress() public  view returns (address,address,address) {
        return (msg.sender,tx.origin,address(this));
    }

    function isCalledDirectByUser() public view returns(string memory){
        return msg.sender==tx.origin?unicode"直接被用户调用":unicode"被另一个合约调用";
    }
}