pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/distribution/FinalizableCrowdsale.sol";
import "./MyToken.sol";

contract MyCrowdsale is CappedCrowdsale, FinalizableCrowdsale {

	  function MyCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _cap, address _wallet) public
	    CappedCrowdsale(_cap)
	    Crowdsale(_startTime, _endTime, _rate, _wallet)
	  {
  }

  function createTokenContract() internal returns (MintableToken) {
    return new MyToken();
  }

}