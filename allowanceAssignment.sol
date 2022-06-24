pragma solidity >=0.7.0 < 0.9.0;

contract allowance{

    mapping(address => mapping( address => uint)) public Allowance;

    function setAllowance(address _addrOwner, address _addrSpender, uint id) public {
        
        Allowance[_addrOwner][_addrSpender] = id;
    }


    function getAllowance(address _addrOwner, address _addrSpender) public view returns(uint) {
     return Allowance[_addrOwner][_addrSpender];
    }
        
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }


}