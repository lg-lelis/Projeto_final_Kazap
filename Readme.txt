A ideia do programa era executar os comandos conforme pedido, porém, devido ao final do prazo de entrega, não consegui finalizar a interface com as adições dos dados de usuario, transferencias, etc via interface. Ela esta com erros e inacabada, porem muito proxima de estar pronta.

Porem, as tabelas estão funcionando, a main.rb e inserção dos dados funcionam, as validações implementadas(regex de cpf, telefone, dados obrigados e cpf unico) funcionam e as funções de transferencia de dinheiro, saques, saldo, deposito, etc funcionam sendo chamadas diretamente pela main(sem usar a interface).

Parte do desafio esta feito, faltando a implementação do juros pelo tempo e usa-la no check_balance.

O objetivo de usar a tabela de account_log era utiliza-la para os logs de extratos que deixei para depois da interface e acabou não sendo executada tambem.

No mais, para o programa funcionar, deixei como exemplo alguns dados na main.rb comentados para testes e algumas amostras das funções deposit, withdraw, transfer para confirmar que as funções funcionam e as suas peculiaridades quando se esta abaixo de saldo 0 ou quando se pede um valor no qual a conta ficara abaixo de -100.

eu rodei o programa apenas com as 2 tabelas de migration(mas inclui a 003  e o model account_log para que a ideia deles sejam vistas)

utilizei o comando no terminal sequel -m db/migrations sqlite://db/sample.db e depois o ruby main.db

obs: tanto o cpf quanto o telefone são usados apenas os 11 digitos sem pontos, traços ou parenteses
