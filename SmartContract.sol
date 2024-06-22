// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract SimpleContractProject {
    address owner;
    uint private value;   ///private

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _value) public {  //setup value
        require(msg.sender == owner, "Only the owner can set the value");
        value = _value;
    }

    function getValue() public view returns (uint) {   //getting value
        return value;
    }

    function restrictedFunction() public view {         //restricted function  
        require(msg.sender == owner, "Only the owner can access this function");

        if (value == 0) {
            revert("Stored value cannot be zero");
        }
    }

    function assertTest() public pure {         //assert test
        uint testValue = 1;
        assert(testValue == 1); // This should always be true
    }
}
