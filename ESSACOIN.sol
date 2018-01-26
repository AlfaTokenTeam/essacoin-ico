pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ESSACOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ESSACOIN(address _owner)  UpgradeableToken(_owner) {
    name = "ESSACOIN";
    symbol = "ESSA";
    totalSupply = 2100000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}