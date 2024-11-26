# BlockchainMessenger

## Overview

__BlockchainMessenger__ is a simple Solidity-based smart contract that allows users to store, view, and update a message on the Ethereum blockchain. The contract is designed to store a message as a bytes32 type and provide functionality to update that message by the contract's owner. Additionally, the contract tracks the number of updates made to the message, providing a simple yet effective way to interact with stored data on the blockchain.

## Features

- __Store a Message__: Store an initial message when deploying the contract.
- __View the Message__: Retrieve the stored message in a human-readable format.
- __Update the Message__: Only the contract owner can update the stored message, with a counter tracking the number of updates.
- __Ownership Control__: The contract owner is the only one authorized to change the message.

## Contract Details

- __Owner__: The account that deploys the contract becomes the owner and has the exclusive ability to change the message.
- __Message Storage__: The message is stored as a bytes32 type, which is a fixed-size, 32-byte string, to optimize storage space.
- __Update Counter__: Tracks the number of times the message has been updated.
