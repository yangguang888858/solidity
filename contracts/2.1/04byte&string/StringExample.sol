// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StringExample{
    string public name="solidity";
    string public greeting;
    function setGreeting(string calldata msg) public {
        greeting=msg;
    }
    function getGreeting() public view returns(string memory){
        return greeting;
    }
}