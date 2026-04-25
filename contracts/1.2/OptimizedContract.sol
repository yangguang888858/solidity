// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract OptimizedContract {
    uint256[] public numbers;
    uint256 public multiplier = 2;

    function batchProcess(uint256[] calldata inputs) external {
        uint len=inputs.length;
        for (uint i = 0; i < len; i++) {
            uint256 result = inputs[i] * multiplier;
            numbers.push(result);
        }
    }

    function getSum() external view returns (uint256) {
        uint256 sum = 0;
        uint len=numbers.length;
        for (uint i = 0; i < len; i++) {
            sum += numbers[i];
        }
        return sum;
    }
}