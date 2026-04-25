// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GasCost {
    uint8 public a = 1;
    uint16 public b = 1;
    uint32 public c = 1;
    uint64 public d = 1;
    uint128 public e = 1;
    uint256 public f = 1;

    function AddUint8() public view returns (uint8) {
        return a + 1;
    }

    function AddUint16() public view returns (uint16) {
        return b + 1;
    }

    function AddUint32() public view returns (uint32) {
        return c + 1;
    }

    function AddUint64() public view returns (uint64) {
        return d + 1;
    }

    function AddUint128() public view returns (uint128) {
        return e + 1;
    }

    function AddUint256() public view returns (uint256) {
        return f + 1;
    }
}
