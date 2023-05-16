// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Map {
    mapping(address => uint256) public maps;

    function get(address key) public view returns (uint256) {
        return maps[key];
    }

    function set(address key, uint256 value) public {
        maps[key] = value;
    }

}