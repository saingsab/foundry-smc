// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage {

    uint256 myFavoritNumber;

    mapping (string => uint256) public nameToFavoriteNumber;

    struct Person {
        uint256 favoritNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _myFavoritNumber) public virtual  {
        myFavoritNumber = _myFavoritNumber;
    }

    //view, pure
    function retieve() public view returns(uint256){
        return myFavoritNumber;
    }

    // Data location: memory, calldata, storage
    function addPeople(string memory _name, uint256 _favoritNumber) public  {
        // listOfPeople.push(Person(_favoritNumber, _name));
        // Remove the array into map to save the compute
        nameToFavoriteNumber[_name] = _favoritNumber;
    }
}