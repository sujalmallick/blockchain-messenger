//SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract messenger{
    uint public c;
    address public owner;
    string public theMessage;

    constructor(){
        owner=msg.sender;
    }
    function updateTheMessage(string memory _newMessage) public
    {
        if(msg.sender==owner){
            theMessage=_newMessage;
            c++;
        }

    }
}