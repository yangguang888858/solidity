// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract CrowdFunding{
    enum ProjectStatus{
        Fundrising,
        Success,
        Fail
    }
    uint public goal=100 ether;
    uint public raise;
    ProjectStatus public currentStatus=ProjectStatus.Fundrising;
    function contribute() public payable {
        require(currentStatus==ProjectStatus.Fundrising,unicode"项目不在募集中...");
        raise+=msg.value;
    }
    function finalSum() public view returns(ProjectStatus){
         require(currentStatus==ProjectStatus.Fundrising,unicode"项目不在募集中...");
        if (raise >= goal) {
            return ProjectStatus.Success;
        }else{
            return ProjectStatus.Fail;
        }
    }
}