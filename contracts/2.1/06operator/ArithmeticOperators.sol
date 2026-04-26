// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract ArithmeticOperators {
    function arithmetic()
        public
        pure
        returns (uint, uint, uint, uint, uint, uint)
    {
        uint a = 10;
        uint b = 3;
        return (a + b, a - b, a * b, a / b, a % b, a ** b);
    }
    function compoundAssignment()
        public
        pure
        returns (uint, uint, uint, uint, uint)
    {
        uint x = 20;
        uint y = 6;
        return (
            x += y,
            x -= y, //计算有误,应该为14,但运行结果为20
            x *= y,
            x /= y, //计算有误,应该为3,但运行结果为20
            x %= y
        );
    }
}
