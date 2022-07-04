//first go at a smart contract!
//also first go at vscode direct to git update!

//Search compile deploy and run solidity transactions in vscode

// SPDX-License-Identifier: MIT


pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    //this will get initiallised as zero.
    uint256 favoriteNumber;

    // struct People {
    //     uint256 favoriteNumber;
    //     string name;
    // }

    // People[] public people;
    // mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // function retrieve() public view returns (uint256){
    //     return favoriteNumber;
    // }

    // function addPerson(string memory _name, uint256 _favoriteNumber) public {
    //     people.push(People(_favoriteNumber, _name));
    //     nameToFavoriteNumber[_name] = _favoriteNumber;
    // }
}
