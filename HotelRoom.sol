// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {

    enum Status { 
        Vacant , 
        Occupied 
    }
    
    Status public currentStatus ;

    event Occupy(address _occupant , uint value) ;

    address payable public owner ;

    constructor () {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant ;
    }

    modifier onlyWhileVacant () {
        // check the status of the room 
        require(currentStatus == Status.Vacant , "The Room is alredy Occupied ");
        _;

    }

    modifier price(uint _cost) {
        // check the price of the room 
        require(msg.value >= _cost , "Not Enogh Ether ! ");
        _;
    }
    

    // this transfer of cryptocurrency will only happen  when the require is true 
    function book_the_hotel_room () public payable onlyWhileVacant price(2 ether) {

        currentStatus = Status.Occupied;

        (bool sent , bytes memory data) = owner.call{value : msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }

}
