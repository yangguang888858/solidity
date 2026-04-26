// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleToken{
    string public name="My token";
    string public symbol="MTK";
    uint8 public decimals=18;
    uint256 public totalSupply;
    address public owner;
    mapping(address=>uint256) balanceOf;
    constructor(uint256 _initSupply){
        owner=msg.sender;
        totalSupply=_initSupply*10**decimals;
        balanceOf[owner]=totalSupply;
    }
    //转账事件
    event TransferEvent(address indexed from,address indexed to,uint256 value);
    //转账
    function transferMTK(address _to,uint _value) public  returns(bool){
        require(_to!=address(0),unicode"不能转给零地址");
        require(balanceOf[msg.sender]>=_value,unicode"余额不足");
        balanceOf[msg.sender]-=_value;
        balanceOf[_to]+=_value;
        emit TransferEvent(msg.sender, _to, _value);
        return true;
    }
    //铸造
    function mint(address _to,uint _value) public {
        require(owner==msg.sender,unicode"铸造必须是owner");
        require(_to!=address(0),unicode"不能铸造到零地址");
        totalSupply+=_value;
        balanceOf[_to]+=_value;
        emit TransferEvent(owner,_to,_value);
    }
    //获取余额
    function getBalance(address addr) public view returns(uint){
        return balanceOf[addr];
    }
}