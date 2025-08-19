// SPDX-License-Identifier: MIT
// License identifier — says this contract is under MIT license

pragma solidity 0.8.30;
// Compiler version — this contract will only compile with Solidity 0.8.30

contract messenger {
    uint public c;
    // Public counter variable (tracks how many times message is updated)

    address public owner;
    // Stores the Ethereum address of the contract owner (who deployed it)

    string public theMessage;
    // Public string variable to hold the latest message

    constructor() {
        owner = msg.sender;
        // The constructor runs once at deployment
        // msg.sender = address that deploys the contract
        // So the deployer becomes the owner
    }

    function updateTheMessage(string memory _newMessage) public {
        // Function to update the message
        // Takes _newMessage as input

        if (msg.sender == owner) {
            // Only allow the owner to update the message

            theMessage = _newMessage;
            // Set the contract’s message to the new one

            c++;
            // Increment the counter each time the owner updates the message
        }
    }
}
