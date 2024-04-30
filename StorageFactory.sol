// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        require(
            _simpleStorageIndex < listOfSimpleStorageContracts.length,
            "Index out of range"
        );
        require(_simpleStorageIndex >= 0, "Index out of range");
        listOfSimpleStorageContracts[_simpleStorageIndex].store(
            _newSimpleStorageNumber
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
