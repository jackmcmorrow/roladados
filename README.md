roladados
=========

Um rolador de dados em Ruby, para ser usado em conjunto com Ruboto, por exemplo.

O programa é bem simples e permite que você crie um objeto com a **classe Dados**, definindo o número de faces.
Por enquanto, conta apenas com os seguintes métodos:

    .initialize //Que recebe o argumento com o número de faces    
    .rolar  //que gera um número de rolagens definido pelo usuário, exibindo a soma de todos os dados no final.    
    .maior  //faz o mesmo que rolar, mas guarda em uma Array entrega o maior 
            //resultado obtido em todos os dados ao invés da soma
    .menor - idem ao maior, só que traz o menor resultado.

No mais é só uma aplicação simples para aprender Ruby.

#Usando o código para aplicações Noobs (como eu)

Primeiro você cria o objeto, com a classe Dados passando um atributo pro método de inicialização.

    meuDado = Dados.new(6) // Isso faz um dado de seis faces
    meuDado.rolar(2) // => 2 números de 1 até 6 aleatórios e a soma no final.
    => 2, 3, Total: 5
