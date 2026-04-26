// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract VoteSystem{
    enum Vote{
        YES, //同意
        NO, //反对
        ABSTAIN //弃权
    }
    mapping(address=>Vote) votes;
    mapping(address=>bool) hasVoteds;
    uint public yesCount;
    uint public noCount;
    uint public abstainCount;
    //记录投票事件
    event voteEvent(address indexed voter,Vote _vote);
    //投票
    function vote(Vote _vote) public  returns(string memory){
        require(!hasVoteds[msg.sender],unicode"您已经投过票");
        votes[msg.sender]=_vote;
        hasVoteds[msg.sender]=true;
        if (_vote==Vote.YES){
            yesCount++;
        }else if(_vote==Vote.NO){
            noCount++;
        }else{
            abstainCount++;
        }
        emit voteEvent(msg.sender, _vote);
        return unicode"投票成功";
    }
    //获取投票结果
    function getResults() public view returns(uint,uint,uint){
        return (yesCount,noCount,abstainCount);
    }
    //获取投票人数
    function getTotalVotes() public view returns(uint){
        return yesCount+noCount+abstainCount;
    }
}