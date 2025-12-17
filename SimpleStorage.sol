// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // stating version

contract SimpleStorage{
    //innitialze with default value 0
    //the public keword on varible indicate visibility specifier of the data stored
    //there are "public", "internal","external","private"
    //the default visibility if not specified is internal 
    uint256 myFavoriteNumber; //0

    // the [] define an array or list
    // uint256[] listOfFavoriteNumber;
   
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public myFriend = Person(69,"zulhas")
    // Person public myFriend = Person({favoriteNumber:69, name:"zulhas"});

    //make dynamic array for people
    Person[] public listOfPeople;


    //this are the function on solidity, for the parameter name will use "_" before the name
    //and the function access is typed last, the ("public")

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //keyword "view" and "pure" are for the non transactional function
    //just to read a variable state
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumeber) public{
        // Person memory newPerson = Person(_favoriteNumeber, _name);
        listOfPeople.push(Person(_favoriteNumeber,_name));
    }
}