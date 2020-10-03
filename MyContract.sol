pragma solidity ^0.5.11;


import 'Myprofile.sol';

// by 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 demo in remix.
contract MyContract {
   // Events emits data to web or mobile apps
   
  /*
    event NewTrade (
        uint indexed date,
        address indexed from, // indexed so we can be able to filter event by this.
        address indexed to,
        uint amount
        );
    
    
    
     function trade(address to, uint amount) external {
         
         emit NewTrade(now, msg.sender, to, amount);
     }
*/
    
    
  // sending ether from address to smart ontract.
   // use function payable 
   // non view keyword
   // define 1000 wei before call invest 
   
   
   mapping(address => uint) balances;
   
   function invest() external payable {
       if(msg.value<1000){
           
           revert(); // revert/cancel if the wei is less than 1k.
       }
       
       balances[msg.sender] += msg.value; // increase the balance of the sender by this amount..
       
   }
   
    
    
    function balanceOf() external view returns(uint){
        
        return address(this).balance;
    } 
    
    
    
    
    
    
    // SENDING EITHER FROM SMART CONTRACT to addr.
    
    // address payable type. 
    // address payable is different from keyword payable
    function sendEther(address payable recipient) external{
        
        // transfer 1 ether from this smart contract to the recipeint
        recipient.transfer(1 ether);
        
        address a;
        a = recipient;
        
      //  a.transfer(100); // will not work.
        msg.sender.transfer(100);
      //  recipient.send(1 ether);
        // send throws error in the contracts
        // can alsways use transfer
        
    }
    
   
   
   // call functions of other smart contracts..
   // import the other contract,
   // contract interface
   // error progapation
   
   // 1. interface of B
   // 2. address of B.
   
   
   address addressB; // set address of B in our contract
   
   function setAddressB(address _addressB) external{
       
       addressB = _addressB;
   }
   
   
   function callHelloWorld() external view returns(string memory)  {
       
   //    B b = B(addressB); // interface..
      
  //    return b.helloWorld();
      
      
      // from the imported interface
      
      MyProfile b = InterfaceProfile(addressB);
      
           return b.helloWorld();
       
       
   }
   
}




contract B {
    function helloWorld() external pure returns (string memory){
        
        return "Hello World";
    }
    

}
    