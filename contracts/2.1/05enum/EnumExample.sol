// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EnumExample{
    enum Status{
        Pending,
        Approved,
        Rejected,
        Cancelled
    }
    Status public currentStatus;
    constructor(){
        currentStatus=Status.Pending;
    }

    function setStatus(Status s) public {
        currentStatus=s;
    }

    function getStatus() public view returns (Status){
        return currentStatus;
    }

}