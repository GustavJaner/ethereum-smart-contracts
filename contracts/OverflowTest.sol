pragma solidity ^0.5.1;

import './libraries/SafeMath_uint8.sol';

contract OverflowTest {
    using SafeMath_uint8 for uint8; // add library functions as methods to variables of the uint8 data type

    uint8 public state;

    function add(uint8 a, uint8 b) private pure returns (uint8) {
        return a+b;
    }

    function sub(uint8 a, uint8 b) private pure returns (uint8) {
        return a-b;
    }

    function addToState(uint8 x) public {
        state = add(state, x);
    }

    function addToState_safe(uint8 x) public {
        state = state.add_safe(x);
    }

    function subToState(uint8 x) public {
        state = sub(state, x);
    }

    function subToState_safe(uint8 x) public {
        state = state.sub_safe(x);
    }
}
