pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/ERC271/MintableToken.sol";

contract MyToken is MintableToken {
  string public constant name = "SuperAwesome Token";
  string public constant symbol = "SAW";
  uint8 public constant decimals = 18;
}