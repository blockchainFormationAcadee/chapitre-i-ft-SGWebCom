// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Struct {
    struct User {
        string username;
        uint age;
        address account;
        uint grade;
        bool isAlive;
    }

    mapping(address => User) users;

    function addUser(uint age, address account, uint grade, bool isAlive, string memory username) public {
        users[account] = User(username, age, account, grade, isAlive);
    }

    function removeUser(address account) public {
        delete users[account];
    }
    
    function setUsername(address account, string memory username) public {
        User storage user = users[account];
        user.username = username;
    }

    function setAge(address account, uint age) public {
        User storage user = users[account];
        user.age = age;
    }

    function setGrade(address account, uint grade) public {
        User storage user = users[account];
        user.grade = grade;
    }

    function setIsAlive(address account, bool isAlive) public {
        User storage user = users[account];
        user.isAlive = isAlive;
    }
}