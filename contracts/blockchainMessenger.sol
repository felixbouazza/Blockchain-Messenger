// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

contract BlockchainMessenger {

    address private owner;
    string public message;
    int public messageUpdatedAmount;

    constructor(string memory initialMessage) {
        message = initialMessage;
        owner = msg.sender;
    }

    modifier onlyOwner() { // Modifier
        require(
            msg.sender == owner,
            "Only owner can call this."
        );
        _;
    }

    function updateMessage(string memory newMessage) public onlyOwner {
        message = newMessage;
        messageUpdatedAmount++;
    }

}