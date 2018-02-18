pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Polling.sol";

contract TestPolling {
  
  Polling polling = Polling(DeployedAddresses.Polling());
  
  function testPollAndRemove() public {
//	poling.send(0.1 ether).then	

	polling.StartPolling("question1");
  	polling.ResolveQuestion();


	//DeployedAddresses.Polling().transfer(100000);
// 
	//polling.depositFunds.value(1 ether)();

  }

}
