pragma solidity >0.7.0 <= 0.9.0;

contract LedgerBalance {
    
    mapping(address => uint) balance;

    function updatesBalance(uint newBalance) public returns(uint) {
        balance[msg.sender] = newBalance;
        return balance[msg.sender];
        }
    function getBalance() public view returns(uint) {
                return balance[msg.sender];
        }
}

contract Updated{
    function updatedBalance() public {
    LedgerBalance ledgerBalance = new LedgerBalance();
    ledgerBalance.updatesBalance(30);
    }
    function coost( ) public view returns(uint){
        //bloc = block.difficulty;
     return   block.number; 
    }
    
   /*function getsBalance() public view returns(uint) {
        return ledgerBalance.balance[msg.sender];
        }*/
    }