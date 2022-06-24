pragma solidity >=0.7.0 < 0.9.0;

contract Oracle {
    address admin;
    uint public rand;
    constructor() {
        admin = msg.sender ;
    }

    function Swap(uint a) external  {
        rand = a;
    require (msg.sender == admin);
        }
}
contract GenerateRandomNumber {
    Oracle oracle;
    constructor (address oracleAddress){
        oracle = Oracle(oracleAddress);
    }

    function randMod(uint range) external view returns(uint){
        return uint(keccak256(abi.encodePacked(oracle.rand(),block.timestamp,block.difficulty,msg.sender))) % range;
    }

}