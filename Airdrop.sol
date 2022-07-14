pragma solidity >= 0.7.0 < 0.9.0;

contract Airdrop{
   

    uint stakingWallet;

constructor(uint walletAmount){
    stakingWallet = walletAmount;
}

    function airDrop(uint airdropAmount) public view returns(uint){
        uint airdropped;
         
        if(stakingWallet >= 10){
            airdropped = stakingWallet + airdropAmount;
                    }
        else {
            airdropped = stakingWallet + 1 ;
        }
       
       return airdropped;
      // return stakingWallet;
    }
}