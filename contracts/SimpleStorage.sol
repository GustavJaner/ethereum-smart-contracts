pragma solidity ^0.5.1;

contract SimpleStorage {
    uint elite;

    constructor() public {
        elite = 1337;
    }

    function set(uint x) public {
        elite = x;
    }

    function get() public view returns (uint state) { // view function: does not write to the state
        return elite;
    }
}
