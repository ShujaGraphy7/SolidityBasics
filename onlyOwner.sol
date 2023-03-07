// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


contract chainLinkAccess{

    address _onlyOwner;
    address private s_keeperRegistryAddress;

    constructor(){
        _onlyOwner = msg.sender;
    }


    function setKeeperRegistryAddress(address keeperRegistryAddress) public onlyOwner {
        require(keeperRegistryAddress != address(0));
        s_keeperRegistryAddress = keeperRegistryAddress;
    }

    modifier onlyKeeperRegistry() {
        require(msg.sender == s_keeperRegistryAddress,"Must be the keeper Address");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == _onlyOwner,"Must be the Owner");
        _;
    }
}