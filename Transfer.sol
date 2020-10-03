pragma solidity ^0.5.11;

import 'Token.sol';

contract TransferToken {
 
    function transfer() external {
       Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
       token.transfer(msg.sender, 100);
    }
    
    
    
    // trasfder from, unbehalf of someone else..
    
    
    // owner
    // operator
    function transferFrom(address recipient, uint amount) external {
        
          Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
       token.transfer(msg.sender, recipient, amount);
        
    }
    
    
   

}



contract Owner {
    
    
    function transfer(address recipient, uint amount) external {
    
    Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
      token.approve(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
       
        TransferToken transferToken = TransferToken(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

        transferToken.transferFrom(amount);

    }
}


    