//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

library Search{
    function searchVal(uint[] memory data, uint val) public view returns(uint){
        for(uint i = 0; i < data.length; i++) if(data[i] == val) return i;
    }
}

contract Check{
    using Search for uint[];
    uint[] data;
    constructor(){
        data.push(23);
        data.push(24);
        data.push(25);
        data.push(26);
        data.push(27);
    }

    function getFromSearch(uint val) public view returns(uint){
        return data.searchVal(val);
    }

    function getSearch(uint val) public view returns(uint){
        return data[val];
    }
}