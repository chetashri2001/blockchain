//Chetashri Mahajan 2019130035 
//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract CreditLimit {
    uint card_limit = 10000;
    uint travel_cost;
    uint food_cost;
    uint stay_cost;

    function setvalues (uint travelcost, uint foodcost, uint staycost) public {
        travel_cost = travelcost;
        food_cost = foodcost;
        stay_cost = staycost;
    }

    function get_remaining_balance() public view returns (uint){
        return card_limit - (travel_cost + food_cost + stay_cost);
    }
}
