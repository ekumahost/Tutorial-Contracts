pragma solidity ^0.5.11;
// by 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 demo in remix.
contract MyProfile {
    
    // 3 vairable types.. 
    
    // 1. Fixed-size types
    uint age; // a state veriable
    bool isReady; 
    address recipient;
    bytes32 data;
    
    // 2. variable-size types
        string first_name;
        bytes _data;
        uint[] amount;
        mapping(uint => string) users; // users[10]
        
        
// 3. User defined data
   struct User {
       uint id;
       string name;
       uint[] firendIds; // array of interger.
       
   }
   
   enum Color {
       RED,
       GREEN,
       BLUE
       
   } // color.red
   
   
  
 
    // read only use view keyword
    function getAge() external view returns(uint){
        return age;
        
    }
    
    
    function setAge(uint _age) external {
        age = _age;
        
    }
    
    
    
    
    
}