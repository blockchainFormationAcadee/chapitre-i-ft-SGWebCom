// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

import "remix_tests.sol"; 
import "remix_accounts.sol";
import "../exercices/rush/Distrib.sol";

contract testSuite {
    RushChapterI distrib;
    
    function beforeAll() public {
        distrib = new RushChapterI();
    }

    function add10IceTeaAndTotalShouldBe10() public {
        try distrib.fillDish(RushChapterI.Dish.ICE_TEA , 10) returns (uint total_, uint added_) {
            Assert.equal(total_, 10, "wrong total");
            Assert.equal(added_, 10, "wrong added");
        } catch Error(string memory /*reason*/) {
            Assert.ok(false, 'failed with reason');
        } catch (bytes memory /*lowLevelData*/) {
            Assert.ok(false, 'failed unexpected');
        }   
    }

    function add20FantaAndTotalShouldBe30() public {
        try distrib.fillDish(RushChapterI.Dish.FANTA , 20) returns (uint total_, uint added_) {
            Assert.equal(total_, 30, "wrong total");
            Assert.equal(added_, 20, "wrong added");
        } catch Error(string memory /*reason*/) {
            Assert.ok(false, 'failed with reason');
        } catch (bytes memory /*lowLevelData*/) {
            Assert.ok(false, 'failed unexpected');
        }   
    }

    function add15LionAndTotalShouldBe42() public {
        try distrib.fillDish(RushChapterI.Dish.LION , 15) returns (uint total_, uint added_) {
            Assert.equal(total_, 42, "wrong total");
            Assert.equal(added_, 12, "wrong added");
        } catch Error(string memory /*reason*/) {
            Assert.ok(false, 'failed with reason');
        } catch (bytes memory /*lowLevelData*/) {
            Assert.ok(false, 'failed unexpected');
        }   
    }

    function get9FantaAndTotalShouldBe11() public {
        try distrib.getDish(RushChapterI.Dish.FANTA, 9) returns (RushChapterI.Dish dish_, uint quantity_, uint total_) {
            Assert.equal(total_, 11, "wrong total");
            Assert.equal(quantity_, 9, "wrong quantity");
            Assert.ok(dish_== RushChapterI.Dish.FANTA, "wrong dish");
        } catch Error(string memory /*reason*/) {
            Assert.ok(false, 'failed with reason');
        } catch (bytes memory /*lowLevelData*/) {
            Assert.ok(false, 'failed unexpected');
        }
    }

    function get12IceTeaAndTotalShouldBe10() public {
        try distrib.getDish(RushChapterI.Dish.ICE_TEA, 12) returns (RushChapterI.Dish dish_, uint quantity_, uint total_) {
            Assert.equal(total_, 10, "wrong total");
            Assert.equal(quantity_, 0, "wrong quantity");
            Assert.ok(dish_== RushChapterI.Dish.ICE_TEA, "wrong dish");
        } catch Error(string memory /*reason*/) {
            Assert.ok(false, 'failed with reason');
        } catch (bytes memory /*lowLevelData*/) {
            Assert.ok(false, 'failed unexpected');
        }
    }
}
    