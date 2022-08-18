// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    // this is a comment
    uint256 favoriteNumber;
    bool favoriteBool;
    bool favoriteBool2;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people; //This is a dynamic array
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public returns (uint256) {
        favoriteNumber = _favoriteNumber;
        return _favoriteNumber;
        // uint256 test = 4; Assign 4 to 'test' variable
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // storing object in memory, only during execution
    // if we store in storage, it'll last longer
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
