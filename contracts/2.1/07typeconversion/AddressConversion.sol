// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AddressConversion{
    function toPayableAddress(address addr) public pure returns(address payable){
        return  payable(addr);
    }
    function toNormalAddress(address payable addr) public pure returns(address){
        return  address(addr);
    }
     function toUint160Address(address addr) public pure returns(uint160){
        return  uint160(addr);
    }

   function toAddress(uint160 addr) public pure returns(address){
        return  address(addr);
    }

    function conversionExample() public view returns(address,uint160,address,address payable ){
        address addr=msg.sender;
        uint160 addr160=uint160(addr);
        address addr2=address(addr160);
        address payable addrPayable=payable(addr);
        return (addr,addr160,addr2,addrPayable);
    }
}