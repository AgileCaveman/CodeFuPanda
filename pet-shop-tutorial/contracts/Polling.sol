pragma solidity ^0.4.11;

contract Polling {
	struct Question {
		address owner;
		string q_string;
		uint amount;
		bool enabled;
	}

	mapping(address => Question) questions;


// thoughts -
// deposit funds separately 
// create question separately
// 
	function () public payable {
		if(!questions[msg.sender].enabled) {
			return;
                }
		questions[msg.sender].amount += msg.value;
	}

	function StartPolling(string q_string) returns(bool success) {
		//TODO: do not replace question if it's present
		
		if(questions[msg.sender].enabled) {
			return true;
                }

		Question memory currentQuestion = Question(msg.sender, q_string, 0, true);
		questions[msg.sender] = currentQuestion;
		return true;
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
		if (amount > 0) {
			msg.sender.transfer(amount);
		}
	}
}
