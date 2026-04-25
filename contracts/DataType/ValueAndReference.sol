// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ValueAndReference {
    //值类型
    function getValue() public pure returns (uint256[] memory) {
        uint256[] memory data=new uint256[](2);
        uint256 a = 1;
        uint256 b = a;
        b = 100;
        data[0] = a;
        data[1] = b;
        return data;
    }
    //引用类型
    function getReference() public pure returns (uint256[] memory) {
        uint256[] memory arr1=new uint256[](2);
        arr1[0]=1;
        uint256[] memory arr2=arr1;
        arr2[0]=100;
        return arr2;
    }
}
