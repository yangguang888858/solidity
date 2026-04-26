// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TypePractise {
    function safeToUint8(uint value) public pure returns (uint8) {
        require(value <= type(uint8).max, unicode"超过uint8的最大值");
        return uint8(value);
    }
    function compareStrings(
        string memory a,
        string memory b
    ) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
    function isZeroAddress(address addr) public pure returns (bool) {
        return addr == address(0);
    }

    function testSafeToUint8() public pure returns (uint8, uint8) {
        return (safeToUint8(0), safeToUint8(255));
    }
    function testCompareStrings() public pure returns (bool, bool) {
        return (
            compareStrings("Hello", "Hello"),
            compareStrings("Hello", "World")
        );
    }

    function testIsZeroAddress() public pure returns (bool, bool) {
        return (
            isZeroAddress(address(0)),
            isZeroAddress(address(0x01223232323))
        );
    }
}
