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
    // uint256 public favoriteNumber; // 0

    // storage
    uint256 favoriteNumber; // 0

    // int256 favoriteInt = -99;
    // string favoriteNumberString = "99";
    // address myAddress = 0x9d1DCbd5FE67b047D0eBc757AC527F08Dd5484f3;
    // bytes32 favoriteBytes32 = "cat";

    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public john = Person({favoriteNumber: 12, name: "John"});

    // dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public namesToFavoriteNumber;

    // static array
    // Person[3] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    // calldata, memory
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(Person(_favoriteNumber, _name));
        namesToFavoriteNumber[_name] = _favoriteNumber;
    }
    
}