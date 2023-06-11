// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;
contract challenge_2 {
    function pure_test(uint _z, uint _y)public pure returns(uint) {
        uint z = _z;
        uint y = _y;
        return z+y;
    }

    // function view_test(uint a, uint b)public view returns(uint)  
    // {
    //     return a + b;
    // }
    uint public x = 5;

      function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    address payable public owner ;
     constructor() {
        owner = payable(msg.sender);
    }

    function deposit () external payable {}

    function getBalance () external view returns (uint) {
        return address(this).balance;
    }
}