// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Cs {

    mapping(uint256 => Client) public clients;

    struct Client{
        string name;
        string surname;
        string companyname;
        string tax;
        string adress;
        string email;
        string phonenumber;
    }

    function addClient(
        uint256 _id,
        string memory _name,
        string memory _surname,
        string memory _companyname,
        string memory _tax,
        string memory _adress,
        string memory _email,
        string memory _phonenumber 
    )public {
        clients[_id] = Client(_name, _surname, _companyname, _tax, _adress, _email, _phonenumber);
    }

}