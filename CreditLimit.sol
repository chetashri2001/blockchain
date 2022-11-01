//Chetashri Mahajan 2019130035 
//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract CreditLimit {
    uint card_limit = 10000;
    uint travel_cost;
    uint food_cost;
    uint stay_cost;

    function set_travel_cost (uint cost) public {
        travel_cost = cost;
    }

    function set_food_cost (uint cost) public {
        food_cost = cost;
    }
    
    function set_stay_cost (uint cost) public {
        stay_cost = cost;
    }

    function get_remaining_balance() public {
        return card_limit - (travel_cost + food_cost + stay_cost);
    }
}
