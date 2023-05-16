// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Array {

    int256[10] myArray = [int256(42), -86, 69, 30, -85563];

    function get(uint8 index) public view returns (int256) {
        return myArray[index];
    }

    function set(uint8 index, int256 value) public {
        myArray[index] = value;
    }

    function incrementArrayFor() public {
        for(uint i = 0 ; i < myArray.length ; ++i)
            ++myArray[i];
    }

    function incrementArrayWhile() public {
        uint i = 0;
        while (i < myArray.length) {
            ++myArray[i];
            ++i;
        }
    }

}