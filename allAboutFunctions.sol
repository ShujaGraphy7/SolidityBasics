//SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

contract Owner{
    address isOwner;
    constructor()  {
        isOwner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == isOwner,"Try with other Account");
        _;
    }

}
contract Register is Owner{
    
    mapping (address => bool) registeredAddress;
    uint price = 10;

    constructor(uint initialPrice) {
        price = initialPrice;
    }

    function register() public payable{
        registeredAddress[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner{
        price = _price;
    }

    function getPrice() public pure returns(uint){
        return 5 + 4;
    }
}