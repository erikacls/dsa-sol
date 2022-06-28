//SPDX-License-Identifier: GPL  

pragma solidity ^0.8.13;  

contract Cadastro {      
   
   string public nome;      
   
   function setNome(string memory _nome) public {         
      nome = _nome;     
   }  
}