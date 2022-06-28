//SPDX-License-Identifier: UNLICENSED

// Versão do compilador
pragma solidity ^0.8.13;

contract Biblioteca {

    // Mapeamento
    mapping (uint => Livro) public livros;

    // Mapeamento Aninhado
    mapping (address => mapping (uint => Livro)) public meusLivros;   

    // Livro
    struct Livro {
        string titulo;
        string autor;
    }

    // Função para adicionar um livro à biblioteca (geral)
    function adicionaLivro (uint _id, string memory _titulo, string memory _autor) public {
        livros[_id] = Livro(_titulo, _autor);
    }
    
    // Função para gravar o endereço dos livros que queremos em nossa biblioteca pessoal
    function bibliotecaPessoal (uint _id, string memory _titulo, string memory _autor) public {
        meusLivros[msg.sender][_id] = Livro(_titulo, _autor);
    }
} 