// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {

    // Store the counter value
    uint public count;

    // Increase the counter by 1
    function increment() public {
        count = count + 1;
    }

    // Decrease the counter by 1
    function decrement() public {
        require(count > 0, "Count cannot be negative");
        count = count - 1;
    }

    // Reset the counter to 0
    function reset() public {
        count = 0;
    }
}
