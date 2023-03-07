// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
contract Counter{
    uint public count;

    function increment()external{
        count++;
    }
}

interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

contract MyContract {
    function incrementContract(address _counter) external{
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}