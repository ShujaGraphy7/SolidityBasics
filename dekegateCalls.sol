// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract B {
    uint public num;
    uint a;
    uint b;
    uint public check;
    
    function setVar() public {
        num = a+b;
        check = 1;
    }

    function mul() public {
        num = a*b;
        check = 2;
    }
}

contract A {

    uint public num;
    uint a;
    uint b;
    
    function setVar(address baseContract) public {
        (bool success, bytes memory data) = baseContract.delegatecall(abi.encodeWithSignature("check()"));
    }

    function setVal(uint _a, uint _b) public{
        a = _a;
        b = _b;
    } 

    function doOp() public{
        num = a-b;
    }
        
}


contract C {
    uint public num;
    uint a;
    uint b;
    
    function setVar() public {
        num = a*b;
    }
}