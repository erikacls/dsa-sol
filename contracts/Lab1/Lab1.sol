//SPDX-License-Identifier: GPL-3.0

// Lab 1 - Criação e Deploy de Contratos Inteligentes (Smart Contracts)

// Versão do compilador
pragma solidity ^0.8.13;

contract meuContrato {
    
    //Array
    string[] public lista_frutas;

    // Função para adicionar um valor ao array
    function adicionaValor(string memory _value) public {
        lista_frutas.push(_value);
    }

    // Função para verificar o tamanho do array
    function verificaTamanho() public view returns (uint) {
        return lista_frutas.length;
    }
}