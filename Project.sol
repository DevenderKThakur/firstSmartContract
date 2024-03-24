// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Project {
    struct information {

        string name ; 

        string message ; 

        uint timestamp ;

        address from ; 
    }

    information [] info ;

    address payable owner ;

    constructor() {
        owner = payable (msg.sender) ; 
    }

    function buyEther(string memory name , string memory message) public payable {
        require(msg.value > 0 , "Please pay more than 1 ether ");
        info.push(information(name , message , block.timestamp , msg.sender));

    }

    function getInformation () public view returns (information [] memory) {
        return info ; 
    }
}
