pragma solidity ^0.5.11;
// by 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 demo in remix.


contract InterfaceProfile {
    
    function helloWorld() external pure returns (string memory);
    
    function helloWorldM() external pure returns (string memory);
}



contract MyProfile {
    
    // 3 vairable types.. 
    
    // 1. Fixed-size types
    uint public age; // a state veriable
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
   
   
   // Variable visibility
   // uint private age;
   // uint internal ages;
   
   
   
   
   // BUILD IN VARIALBES
   
   // 1. tx :: transaction
  // tx.origin >> eth adress sending the transaction
   
   
   // 2. msq  :: message
   
   // msq.value >> amount of eth sent to contract in wei. 1 wei = 10 ^ (-18) eth
   // msg.sender >> eth address calling the function
   
   // block 
   
   // block.timestamp >> in seconds
   
   
   
   
   // messaging and transaction difference..
   // >>>  John ==> Smart Contract A   ==> Smart Contract B.              ==>  Contract C
   //             tx.origin  = John         tx.origin = John                      John
   //             msg.sender = John         msq.sender = Contract A                  B
   // most time we use msq.sender
  
 
    // read only use view keyword
    function getAge() external view returns(uint){
        
        // view keywords this funtion is read only, cannot write to chain
        // pure keyword can return 1+2 new things
        // 
        
        
        // >>> Function visibility
        // external keyword: make the function available to public call from outside the contract only
        // private : can only call from the contract. 
        // internal : can be called from inherited contract and this contract.
        // public: call from outside and inside the contract
        
        
        return age;
        
    }
    
    
    function setAge(uint _age) external {
        age = _age;
        
    }
    
    

    
    // if condition
    function foo() external{
        
   // if(!msg.sender >= 100 && block.timestamp > 12345690)   {
        
        
        
  //  }else{
        // do something
        
  //  }
    
     
        
    }
    
    // for loop
    function iterateArray( ) external {
        
        for(uint i = 0; i < 9; i++){
            
        }
        
        
    }
    
    
    function whileLooping() external {
        bool isOk =true;
     //   while(true){// infinite look, notpossible in solodity
              
                while(isOk==false){
                    
                //    if(){
                //        isOk = false;
                //        continue;
                //    }
    
    
        }
    }
    
    
    
    
    // ARRAYS
    
// >> storage ARRAYS
// >> memeory ARRAYS
// >> array arguments and retuen array from function

uint[] myArray; // crud:
    
    
   function myArrayFoo() external{
       
     myArray.push(2);  // add item to array
        myArray.push(5);  
       
        myArray[0]; // read 
       
       myArray[0] = 3; // update
       
       delete myArray[0]; // remove the arrray, resert th value to default, 0 because we use int. bool = false,
       
       // loop through thre storage array
      for(uint i = 0; i < myArray.length; i++){
          
          myArray[i];
          
      }
      
   } 
    
    
  // MEMORY ARRAYS: 
  // NOT SAVED IN SMART contract
  
  function memoryArrays() external {
      // im memeory so we define in the function
     uint[] memory newArray = new uint[](10); // has ten items 
     
      newArray[0] = 107;
      newArray[1] = 108;
      
       newArray[0];
       
        newArray[0] = 200;
        
        delete newArray[0];
      
      
  }
    
    
    // ARRAY IN function
    
    function fooBar(uint[] memory myArg) internal returns(uint[] memory){
        
        
    }
    
    
    
   /// MAPPINGS
   // declare MAPPINGS
   // crud
   // default values
   // exotic mapping 1. nested MAPPINGS
   // exotic mappings 2: array inside mappings
   
   
   mapping(address => uint) balances;
   
   
   mapping(address => mapping(address => bool)) approved;
  
     mapping(address => uint[]) scores;

  
   //string spender;
   function mapFoo() external {
      // add 
      balances[msg.sender] = 100;
       balances[msg.sender]; // read
       
       balances[msg.sender] = 200; // put
       
      delete balances[msg.sender]; // 
       
       // default values: >> all keys are accesible even the ones not existing, value will map to default value on unit
  
  // exotic map 1
  
  /*   approved[msg.sender][spender] = true;
     approved[msg.sender][spender];
      approved[msg.sender][spender] = false;
      delete  approved[msg.sender][spender];
  */
  
 
   }
   
   
   // declare manipulate struct.
   // can only define fields not methods
   
   // declare, crud, array, mapping
   
  struct MyGirl {
      address addr;
      uint score;
      string name;
     
  }
   
   MyGirl[] mygirls;
   mapping(address => MyGirl) girlslist2;
   
    function structGirl(string calldata _name) external {
     
     MyGirl memory mygirl1 = MyGirl(msg.sender, 0, _name);
     MyGirl memory mygirl2 = MyGirl(msg.sender, 0, _name);
      MyGirl memory mygirl3 = MyGirl({name: _name, score:0, addr: msg.sender});


     mygirl3.score = 20;
     
     delete mygirl1;
      mygirls.push(mygirl3); // array o struct
      girlslist2[msg.sender] = MyGirl(msg.sender, 0, _name);
        
    }
    
    
    
    
    
  // ENUM  // all capital leter as convetion
    enum STATE {  INACTIVE, ACTIVE }
    STATE state;
    
    function setActive() external{
        
        state = STATE.ACTIVE;
    }
    
    function myChecks() external {
        
        if(state == STATE.ACTIVE){
            
            // fly
        }
    }
    
     struct UserB {
      STATE state;
 
     
  }
    
    function enumBar(STATE _state) external{
        
        
        
    }
    
    
    // MEMORY LOCATIONS
    // storage
    // MEMORY
    // stack
    // calldata
    
    
    struct FishUser{
        string name;
    }
    FishUser[] usersfs;
    
    function fish() external{
        uint b; // stack variable, avilable only inside the function
         // do not declare too many stack variable, sack has little mem..
       
       
       
        FishUser memory usersf = usersfs[0];
        
        usersf.name = "Uncle Ben";
        
        fishBar(usersf);
        
        
    }
    
    
    function fishBar(FishUser memory usersf) internal {
        
        
    }
    
    
  //  function fishFoo(FishUser[] calldata _firstuser) external {
  //  }
  
  
  
    function helloWorld() external pure returns (string memory){
        
        return "Profile Hello World";
    }
    
    
       function helloWorldM() external pure returns (string memory){
        
        return "prfile Hello World2";
    }
}