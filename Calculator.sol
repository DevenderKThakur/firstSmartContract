// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract basicCalculator{

    uint public result ;

    function add (uint a , uint b )  internal {
        result = a + b ;
    }

    function sub (uint a , uint b )  internal {
        result = a - b ;
    }


}


contract advancedCalculator is basicCalculator {

    function multi(uint a , uint b ) internal {
        result = a * b ;
    }   

    function divide(uint a , uint b ) internal {
        result = a / b ;
    }

    function getResult (uint a , uint b , uint operation ) public {
        if (operation == 0) {
            add(a, b);
        }
        else if (operation == 1 ){
            sub(a, b);
        }
        else if (operation == 2){
            multi(a, b);
        }
        else if (operation == 3 ){
            divide(a, b);
        }
        else {
            revert("Invalid Operation");
        }
    }


}
