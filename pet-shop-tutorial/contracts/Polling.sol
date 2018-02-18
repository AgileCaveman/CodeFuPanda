pragma solidity ^0.4.11;

contract Polling {
	struct Question {
		address owner;
		string q_string;
		uint amount;
		bool enabled;
	}

	mapping(address => Question) questions;

	function StartPolling(string q_string) public payable {
		//TODO: do not replace question if it's present
		if(questions[msg.sender].enabled) {
			return;
                }
		Question memory currentQuestion = Question(msg.sender, q_string, msg.value, true);
		questions[msg.sender] = currentQuestion;
	}

	function ResolveQuestion() public {
		address owner = msg.sender;

		//TODO : check questions has owner
		if(!questions[msg.sender].enabled) {
			return;
		}
		uint amount = questions[owner].amount;
		questions[owner].amount = 0;
		questions[owner].enabled = false;
		msg.sender.transfer(amount);
	}
}
