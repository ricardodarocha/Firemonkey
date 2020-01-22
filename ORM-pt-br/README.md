Uma demonstração simples com ORM (Object Relational Mapping) e Arquitetura MVVM (Model-View,View-Model)

A camada de persistência fica concentrada no DMDados.pas, que você pode facilmente migrar para uma 
estrutura Multicamadas com servidor HTTP, fazendo REQUEST em uma Api Rest-JSON, 
ou então usar uma conexão Firedac diretamente com o banco de dados (FdConnection),
ou ainda implementar uma solução diferente baseada em arquivos, em vez de tabelas, como por exemplo
um banco de dados não relacional (Mongodb, REDIS)

        [ ORM ]
       /       . 
      /         . ~ somente leitura
   [ M ]  -->  [ V ]                                   ADD .. [ C ] 
   [ M ]  <--  [ V ] 

A camada de Model implementa Classes para abstrair as tabelas com atributos e métodos da regra de negócios
A camada de View implementa Formulários para apresentar a informação para o usuário, e também para coletar 
os campos do cadastro, como também para realizar as atividades de CRUD

Futuramente você pode implementar uma camadade Controller para realizar transações e operações de cálculo para as classes

