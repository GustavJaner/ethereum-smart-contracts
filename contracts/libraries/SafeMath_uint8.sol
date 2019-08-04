pragma solidity ^0.5.1;

library SafeMath_uint8 {
    function add_safe(uint8 a, uint8 b) internal pure returns (uint8) {
        uint8 c = a + b;
        require(c >= a, "SafeMath: addition overflow"); // if addition overflows: the sum will continue from 0

        return c;
    }

    function sub_safe(uint8 a, uint8 b) internal pure returns (uint8) {
        require(b <= a, "SafeMath: subtraction overflow"); // if subtraction overflow occurs: the difference will continue from 255

        return a - b;
    }
}
