// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

contract deposit {

    event log(string _name , address _adress , uint value);
    fallback() external payable 
    {
        emit log("fallback", msg.sender, msg.value);
    }
    
}