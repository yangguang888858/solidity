// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskOptimized {
    uint[] public data;

    function processData(uint[] calldata input) public {
        delete data;  // 清空数组
        uint256 len=input.length;
        uint256[] memory temp = new uint256[](len);
        for(uint i = 0; i < len; i++) {
            temp[i]=input[i]*2;
        }
        data=temp;
    }

    function getSum() public view returns (uint) {
        uint sum = 0;
        uint256 len=data.length;
        for(uint i = 0; i < len; i++) {
            sum += data[i];
        }
        return sum;
    }
}