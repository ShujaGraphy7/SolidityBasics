//SPDX-License-Identifier: MIT

pragma solidity 0.8.17; 
contract Arrays{

    struct student{
        uint rollno;
        uint id;
    }

    student[] _ID;

    function Create(uint _rollNo, uint _id) public {
        _ID.push(student(_rollNo,_id));
    }
    
    function findInArr(uint _id) public view returns(uint) {
        
        uint ReadValue = 0;
        for(uint i = 0; i < _ID.length; i++)
        {
            if(_id == _ID[i].id)
            {
                ReadValue = _ID[i].rollno;
            }
        }
        return ReadValue;
    }


    function Update(uint _Replace, uint _id) public {
        for(uint i = 0; i < _ID.length; i++)
        {
        if(_id == _ID[i].id)
            _ID[i].rollno = _Replace;
        }
    }

    function Delete(uint _Delete) public {
            uint temp;

            temp = _ID[_ID.length - 1].rollno;
            _ID[_ID.length - 1].rollno = _ID[_Delete].rollno;
            _ID[_Delete].rollno = temp; 
            _ID.pop();
    }
}
