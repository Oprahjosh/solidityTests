pragma solidity >=0.7.0 < 0.9.0;

contract operators{
    uint a = 3;
    uint b = 2;
    function compareOperator() public view returns(uint){  

        require( a <= b , 'Cannot perform operation');

        return a + b;

    }

    function multiply() public view returns(uint){
           uint multiplied = (a * b) / b;
                
        require(b > a && a != b , 'Cannot perform the operation'); 
        
        return multiplied;

    }

    function assignIncrement() public view returns(uint){
            uint c;
            c = b;
            return c += 1;
    }
    
}