pragma solidity ^0.5.11;


contract MyFunctions {
   uint a; 
   address admin;
    // modifier will run first..
   
    function foo(uint a) external myModifier(a) onlyAdmin() {
        
        
    }

    
    
    modifier myModifier(uint a) { // internal by default
        
        require(a == 10, 'my error message');
        
        _; // placeholder : where body of foo function will execute.
        
    }
    
    
       modifier onlyAdmin() { // internal by default
        
        require(msg.sender == admin, 'my error message');
        
        _; // placeholder : where body of foo function will execute.
        
    }
    
    
}

