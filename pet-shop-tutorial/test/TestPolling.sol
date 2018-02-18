pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Polling.sol";

contract TestPolling {
  
  Polling polling = Polling(DeployedAddresses.Polling());
  
  function testPollAndRemove() {
	polling.StartPolling.value(1000)("question1");
  	polling.ResolveQuestion();
  }

}
