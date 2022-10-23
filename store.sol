// SPDX-License-Identifier :MIt

pragma solidity ^0.8.7;

contract store{
   uint x; //intitially the value of the number is zero 
   function storeNumber(uint y)public{
      x = y; // by assigning the value of the y we will give the value to the x
      x++;
   }

   function addNumber()public view returns(uint){  //view only read the value it cannot assign the value
      return(1+1);
   }
}
