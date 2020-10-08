pragma solidity ^0.5.11;


contract As {
 
 
function foo() external {
    
    uint a;
     uint b;
     uint c;
     
     c = a + b;
     uint size;
    address addrss = msg.sender; 
     assembly {
         
         c := add(1,2)
         let a := mload(0x40)
         mstore(a, 1) // store 
         sstore(a, 2) // store percistent item in blockchian
   
   // find out if contract addrss
    size := extcodesize(addrss)
   
     }
     
     
  if (size > 0) {
     
      return true;
  }  else{
      return false;
  }
     
   
   
   // cast byte to bytes32
   
   // bytes32 data32 = bytes32(data)
   
   assembly {
       
       data32 := mload(add(data, 32))
       
   }
   
   
    
}
  
    
}

