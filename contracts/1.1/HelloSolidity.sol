// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract HelloSolidity {
    //定义状态变量
    string public message;
    address public owner;

    //定义构造函数
    constructor() {
        message = "Hello,solidity 2026-04-19";
        owner=msg.sender;
    }

    //定义修改消息函数
    function updateMessage(string memory update_message) public {
        message = update_message;
    }

    //定义查看消息函数
    function getMessage() public view returns (string memory) {
        return message;
    }

    //定义查询地址函数
    function getOwner() public view returns (address){
        return owner;
    }

    //查询调用者是否是owner
    function isOwner() public view returns(bool){
        return msg.sender==owner;
    }
}
