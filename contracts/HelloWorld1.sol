// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName="jack";
    string public tokenAbbrv = "ask";
    uint public totalSupply = 3;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
   function burn(address _address,uint _value)public{
        if(balances[_address]>=_value){
            totalsupply -=_value;
            balances[_address] -=_value;
        }
    }}