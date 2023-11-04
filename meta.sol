// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public _token_nm = "Sarvendra";
    string public _token_abbr = "Singh";
    uint public _tot_supply = 0;

    // mapping variable here
    mapping(address => uint) public balance;

    // mint function
    function mint(address Addr, uint Value) public {
        _tot_supply += Value;
        balance[Addr] += Value;
    }

    // burn function
    function burn(address Addr, uint Value) public {
        if(balance[Addr] >= Value) {
            _tot_supply -= Value;
            balance[Addr] -= Value;
    }
    }
}
