// SPDX-License-Identifier:MIT

  pragma solidity ^0.8.17;

  contract Events {
      //Events allow log on blockchain
      //Cheap logging,gas açısından ve yer kaplama açısından daha az maliyete sahipler
      // arayüzde önemlidir


      event NewUser(address userAddress,    string name);

      event Success(uint age);

      function createUser(string memory _name  ,uint _age) public {
          // user created


          emit NewUser (msg.sender,    _name);
          emit Success(_age);
      }



      event ItemSold(address seller    ,address buyer   ,string itemname    ,uint price);

      function selfItem( address _buyer     ,      string memory _name,       uint _price) public {
          // product sold

          emit ItemSold( msg.sender   ,    _buyer    ,    _name,     _price);

      }

  }