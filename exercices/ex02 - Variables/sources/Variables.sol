// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Variables {
    uint answerToLife = 42;
    int wrongAnswerToLife = -42;
    string sentence = "I'm a string";
    bool isTrue = true;
    address owner = msg.sender;
}