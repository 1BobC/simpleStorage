//first go at a smart contract!

pragma  solidity ^0.6.0.;

contract simpleStorage {
    uint265 favoritNumber;

    function store(uint265 _favoritNumber) private {
        favoritNumer = _favoritNumber;
    }
}