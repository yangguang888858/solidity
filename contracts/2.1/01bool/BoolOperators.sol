// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract BoolOperators {
    function logicOperators()
        public
        pure
        returns (bool, bool, bool, bool, bool)
    {
        bool a =true;
        bool b=false;
        return (!a,a&&b,a||b,a==b,a!=b);
    }
}
