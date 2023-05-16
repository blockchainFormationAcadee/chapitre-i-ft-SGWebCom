// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Enum {
    enum UserType {
        OWNER,
        CUSTOMER,
        FRIEND,
        DEVELOPER
    }
    
    mapping(address => UserType) public maps;

    function getAddressType(address user) public view returns (UserType type_) {
        type_ = maps[user];
    }

    function setAddressType(address user, UserType uType) public {
        maps[user] = uType;
    }
}