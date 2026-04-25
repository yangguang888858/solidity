// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AccessControl{
    //默认是激活状态
    bool isActive=true;
    //默认是非停止状态
    bool isPause=false;
    //检查是否为正常状态
    function checkActive() public view returns (bool){
        return isActive&&!isPause;
    }
    //切换状态
    function toggleActive() public {
        isActive=!isActive;
    }
    //判断是否为正常状态
    function isNormal() public view returns (string memory){
        return checkActive()?unicode"正常状态>>>":unicode"不正常状态----";
    }
}