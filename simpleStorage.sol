//first go at a smart contract

//Search compile deploy and run solidity transactions in vscode

//2:02:00store person and favourite number,retreive the favourite number of a person

// SPDX-License-Identifier: MIT


pragma solidity >=0.6.0 <0.9.0;

contract simpleStorage{

    //this will be initialized as 0
    //uint256 public favouriteNumber;
    uint256 favouriteNumber; //removing public removes blue favouriteNumber blue button
    bool favouriteBool;      //included when creating a list of people
    //string name;
    // string favouriteString = "String";
    // int256 favouriteInt = -5;
    // address favouriteAddress = 0x75773071458Df6F83cFb6E02586Ff992Cf736709; //Etherum address
    // bytes32 favouriteBytes = "Cat";
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    //People public person = People({favouriteNumber: 11224, name: "Robert"}); 
    //commented out when creating a list of people

    People[] public people; //this [] is a dynamic array, [22] is fixed
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber; 
    }
        //keywords view and pure require no transaction therefore no cost
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
    function addPerson(string memory _name, uint256 _favouriteNumber ) public {
         people.push(People(_favouriteNumber, _name));
        //shorter version can drop favouriteNumbe and name text
        nameToFavouriteNumber[_name] = _favouriteNumber;
     }
}
