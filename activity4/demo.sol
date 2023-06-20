pragma solidity 0.8.18;

contract demo {
  string _msg;
  
  function takeInput(string memory a) public {
    _msg=a;
  }
  
  function giveOutput() public view returns(string memory) {
    return (_msg);
  }
