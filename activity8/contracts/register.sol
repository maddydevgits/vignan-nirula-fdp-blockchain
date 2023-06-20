// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract register{

    string[] _names;
    string[] _emailids;
    string[] _mobiles; 
    string[] _passwords;
    string[] _usernames;
    address owner;

    constructor() public { // only one time
        owner=msg.sender;
    }

    modifier onlyOwner() { // every time 
        require(owner==msg.sender);
        _;
    }

    function signup(string memory name,string memory emailid,string memory mobile,string memory password,string memory username) public{
        _names.push(name);
        _emailids.push(emailid);
        _mobiles.push(mobile);
        _passwords.push(password);
        _usernames.push(username);
    }

    function display() onlyOwner public view returns(string[] memory,string[] memory,string[] memory,string[] memory,string[] memory) {
        return(_names,_emailids,_mobiles,_passwords,_usernames);
    }
}
