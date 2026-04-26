// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract BitwiseOperators {
    function bitwise()
        public
        pure
        returns (uint, uint, uint, uint, uint, uint)
    {
        uint a = 5; // ⼆进制：0101
        uint b = 3; // ⼆进制：0011
        return (
            a & b, // 按位与：1（0001）
            a | b, // 按位或：7（0111）
            a ^ b, // 按位异或：6（0110）
            ~a, // 按位⾮：uint256最⼤值-5
            a << 1, // 左移：10（1010）
            a >> 1 // 右移：2（0010）
        );
    }
    // 位运算的实际应⽤
    function checkBit(uint value, uint position) public pure returns (bool) {
        // 检查某⼀位是否为1
        return (value & (1 << position)) != 0;
    }
    function setBit(uint value, uint position) public pure returns (uint) {
        // 将某⼀位设置为1
        return value | (1 << position);
    }
    function clearBit(uint value, uint position) public pure returns (uint) {
        // 将某⼀位设置为0
        return value & ~(1 << position);
    }
}
