// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4; 

contract Adoption {
    
    // there are 16 pets
    address[16] public adoptors;
    
    function adopt(uint petID) public returns(uint) {
        require (petID >= 0 && petID <= 15);
        adoptors[petID] = msg.sender;
        return petID;
    }
    
    function getAdoptors() public view returns(address[16] memory) {
       return adoptors;
    }
    
}
