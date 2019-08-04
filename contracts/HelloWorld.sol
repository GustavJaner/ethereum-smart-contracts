pragma solidity ^0.5.1;

contract Hello {
    string public helloState = "Hello!"; // declaring state variable with visibility type public: creates a getter func() automatically

    function helloFunc() public pure returns (string memory) { // pure function: does not read/write to the state
        return "Hello, world!";                                // for array parameters such as byte or string: 'memory' has to be explicitly be stated
    }
}
