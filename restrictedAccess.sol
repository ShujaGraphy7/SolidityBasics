

pragma solidity 0.8.17;

contract checkOwner{
    address public owner = msg.sender;

    function isOwner() public view returns(address){
        return owner;

    }
}