// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

contract BlockchainMessenger {

    address private owner;
    bytes32 private message;
    int public updateCounter;

    constructor(bytes32 initialMessage) {
        message = initialMessage;
        owner = msg.sender;
    }

    function getMessage() public view returns(string memory) {
        string memory converted = string(abi.encodePacked(message));
        return converted;
    }

    function changeMessage(bytes32 newMessage) public {
        if (owner == msg.sender && newMessage != message) {
            message = newMessage;
            updateCounter++;
        }
    }

}