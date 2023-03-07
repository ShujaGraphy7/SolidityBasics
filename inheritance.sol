//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Calculator{
    function getData() public view virtual returns(uint){ } 
}

contract Test is Calculator{
    function getData() public pure override returns(uint){
        return 1 + 2;
    }
}