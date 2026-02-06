// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    // 1. Store a number
    uint private storedNumber;

    // 2. Event to log when the number changes
    event NumberChanged(uint oldNumber, uint newNumber);

    // 3. Function to set a new number
    function setNumber(uint _newNumber) public {
        uint oldNumber = storedNumber;
        storedNumber = _newNumber;

        // Emit event
        emit NumberChanged(oldNumber, _newNumber);
    }

    // 4. Function to get the stored number
    function getNumber() public view returns (uint) {
        return storedNumber;
    }
}
