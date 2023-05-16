// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract RushChapterI {

    enum Dish {
        ICE_TEA,
        MARS,
        LION,
        FANTA,
        COCA_COLA
    }

    mapping (Dish => uint) public dishQuantity;
    uint public totalQuantity;
    uint public quantityMax = 42;

    function getDish(Dish dish, uint quantity) public returns (Dish, uint, uint total_) {
        total_ = dishQuantity[dish];
        if(quantity > total_)
            return (dish, 0, total_);
        
        total_-= quantity;
        totalQuantity -= quantity;
        dishQuantity[dish] = total_;
        
        return(dish, quantity, total_);
    }

    function fillDish(Dish dish, uint quantity) public returns (uint total_, uint added_) {
        total_ = totalQuantity;
        total_ += quantity;
        if(total_ > quantityMax) 
            total_ = quantityMax;
        added_ = total_ - totalQuantity;
        dishQuantity[dish] += added_;
        totalQuantity = total_;
    }
}