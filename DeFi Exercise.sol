pragma solidity >=0.7.0 < 0.9.0;

contract DeFi {
    uint stakingWallet = 18;
 

    function airDrop() public view returns(uint){

        if(stakingWallet >= 10) {
           uint airdropAmount = 10;
           uint  stakedWallet = stakingWallet + airdropAmount;

        return stakedWallet;

        }

        else {
           uint airdropAmount = 1;
           uint stakedWallet = stakingWallet + airdropAmount;
                
        return stakedWallet;

        }
    }

    }

