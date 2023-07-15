// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

contract PureAndView {

    uint a = 3; 
    function view_example(uint x)public view  returns(uint) {
        return(a+x);
    }
    function pure_example(uint x,uint y)public pure returns(uint) {
        return(x+y);
    }
    
}