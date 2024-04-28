// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.19;
// pragma solidity >=0.8.19 <0.9.0;
pragma solidity 0.8.19;

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes 
    // bool hasFavoriteNumber = false;
    // uint favoriteNumber = 99;
    // uint256 internal favoriteNumber; // 0
    // uint256 favoriteNumber; // 0
    uint256 public favoriteNumber; // 0
    // int256 favoriteInt = -99;
    // string favoriteNumberString = "99";
    // address myAddress = 0x9d1DCbd5FE67b047D0eBc757AC527F08Dd5484f3;
    // bytes32 favoriteBytes32 = "cat";

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; // store the value in memory
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber; // return the value from memory
    }
}