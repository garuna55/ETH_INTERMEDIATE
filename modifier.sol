// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

contract Modifiers 

{
    uint a; 
    uint b;
    uint c;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyAdmin{
        require(owner==msg.sender, "Only admins allowed");
        _;
    } 

    function enter_data(uint _a, uint _b, uint _c )public onlyAdmin {
        a = _a;
        b = _b;
        c = _c;
    }

    function result()public view onlyAdmin returns(uint) {
        if (a>b&&a>c) {
            return a;
        } 
        else if (b>a&&b>c) {
            return b;
        }
        else {
            return c;
        }

    }


}