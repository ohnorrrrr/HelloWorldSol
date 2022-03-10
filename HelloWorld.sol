// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract HelloWorld {
    string public name;
    string public greetingPrefix = "Hello ";

    constructor(string memory initName) {
        name = initName;
    }

    function setName(string memory newName) public {
        name = newName;
    }
    function getGretting() public view returns (string memory) {
        return string(abi.encodePacked(greetingPrefix, name));
    }
}