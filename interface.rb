require 'rainbow'

class Interface

    def begin_interface
    
    loop do
        puts "Seja bem-vindo ao banco Pazak!"
        puts "Selecione uma das opções a seguir:"
        puts '____'
        puts '1. Cliente novo'
        puts '2. Cliente ja existente'
        puts '3. sair'
        puts '____'
        print 'Digite a opção desejada:'
        option1 = gets.chomp.to_i

        case option1

        when 1
            puts '____'
            puts ' Para criar uma nova conta digite 1, para retornar digite 5'
            op = gets.chomp
                if op == 1
                    puts 'Digite seu primeiro nome'
                    first_name = gets.chomp
                    puts 'Digite agora o seu sobrenome'
                    last_name = gets.chomp
                    name_new = first_name +' '+ last_name
                    puts 'Agora, digite seu CPF ou CNPJ(digite apenas os numeros)'
                    document_new = gets.chomp_to.i
                    puts 'Agora, digite seu endereço'
                    address_new = get.chomp
                    puts 'Por fim,digite seu numero de telefone com DDD(digite apenas numeros)'
                    tel_number_new = get.chomp_to.i
                    client_new = Client.create(name: @name_new, document: @document_new, address: @address_new, tel_number: @tel_number_new)
                    account_new = Account.create(client_id: client_new.id)
                    puts "Sua conta foi criada, ela possui o registro #{account_new.id}"

                elsif op ==5
                    break
                else
                    puts 'opção invalida'
                end


        when 2
            loop do
                puts '____'
                puts 'informe seu cpf'
                document2 = gets.chomp.to_i
                #client_id = Client.first()
                account = Client.first(document: document2)
                puts "informe seu conta"
                account_client = gets.chomp.to_i
                # account.id == account_client.id?
                puts 'O que deseja fazer?'
                puts '1. Criar uma nova conta bancária'
                puts '2. Atualizar conta bancária'
                puts '3. Realizar uma transferência bancária'
                puts '4. Depositar dinheiro em sua conta'
                puts '5. Saques'
                puts '6. Solicitar extrato bancário'
                puts '7. Excluir conta bancária'
                puts '8. checar saldo'
                puts '9. Retornar'
                puts '____'
                print 'Digite a opção desejada:'
                option2 = gets.chomp.to_i
        
                case option2
        
                    when 1
                        puts 'se seus dados são os mesmos da sua conta, digite 1 para criar, caso precise atualizar, digite 5 faça a atualização antes'
                        op = gets.chomp
                        if op == 1
                            account_new1 = Account.create(client_id: client_new.id)
                            puts "Sua conta foi criada, ela possui o registro #{account_new1.id}"

                        elsif op ==5
                        break

                        else
                        puts 'opção invalida'
                        end

                    when 2
                        loop do
                            puts '____'
                            puts 'O que deseja atualizar?'
                            puts '1. Nome'
                            puts '2. Endereço'
                            puts '3. Documento'
                            puts '4. numero de telefone'
                            puts '5. Retornar'
                            puts '____'
                            print 'Digite a opção desejada:'
                            option3 = gets.chomp.to_i
                
                                case option3
                
                                    when 1
                                        puts '____'
                                        puts 'Digite o nome a ser atualizado'
                                        first_name = gets.chomp
                                        puts 'Digite agora o sobrenome a ser atualizado'
                                        last_name = gets.chomp
                                        new_name = first_name +' '+ last_name
                                        puts new_name
                                        puts "Tem certeza que deseja alterar o nome de #{client_id.name} para #{new_name}?Digite 1 para confirmar ou 5 para cancelar"
                                            answer3 = gets.chomp.to_i
                                            if answer3 == '1' #account.update

                                            elsif answer3 == '5' 
                                            break

                                            else 
                                            puts 'opcao invalida'
                                            end
                                    when 2
                                        puts '____'
                                        puts 'Digite o endereço a ser atualizado'
                                        new_address = gets.chomp
                                        puts "Tem certeza que deseja alterar o nome de #{client_id.address} para #{new_address}?Digite 1 para confirmar ou 5 para cancelar"
                                        answer3 = gets.chomp.to_i
                                        if answer3 == '1' #account.update

                                        elsif answer3 == '5' 
                                        break

                                        else 
                                        puts 'opcao invalida'
                                    when 3
                                        puts '____'
                                        puts 'Digite o CPF OU CNPJ a ser atualizado'
                                        new_document = gets.chomp.to_i
                                        puts "Tem certeza que deseja alterar o nome de #{client_id.document} para #{new_document}?Digite 1 para confirmar ou 5 para cancelar"
                                        answer3 = gets.chomp.to_i
                                        if answer3 == '1' #account.update

                                        elsif answer3 == '5' 
                                        break

                                        else 
                                        puts 'opcao invalida'
                                        end

                                    when 4
                                        puts '____'
                                        puts 'Digite o telefone a ser atualizado'
                                        new_tel_number = gets.chomp.to_i
                                        puts "Tem certeza que deseja alterar o nome de #{client_id.tel_number} para #{new_tel_number}?Digite 1 para confirmar ou 5 para cancelar"
                                        answer3 = gets.chomp.to_i
                                        if answer3 == '1' #account.update

                                        elsif answer3 == '5' 
                                        break

                                        else 
                                        puts 'opcao invalida'
                                    when 5
                                        puts 'Até mais'
                                    break
                                  
                                else
                
                                puts "Opção inválida"

                                end
                            end
                                                
                    when 3
                        puts '____'
                        puts 'informe o valor a ser transferido'
                        value1 = gets.chomp_to.i
                        puts 'Informe a conta destino'
                        account_dest = gets.chomp_to.i
                        account1 = account.where(id: account_dest)
                        puts' Selecione o metodo de transfencia: 1 para pix e 2 para TED'
                        op = gets.chomp_to.i
                        #account.transfer(account1, value1, op)


                    when 4
                        puts '____'
                        puts ' digite o valor a ser depositado'
                        value2 = gets.chomp_to.i
                        #account.deposit(value2)

                    when 5
                        puts '____'
                        puts 'digite o valor a ser sacado'
                        value3 = gets.chomp_to.i
                        #account.withdraw(value3)
                    when 6
                        puts '____'
                        puts 'Deseja pedir o extrato? digite 2 para sim ou 5 para sair'
                        answer3 = gets.chomp_to
                        if answer4 == '2' 

                        elsif answer4 == '5' 
                        break

                        else 
                        puts 'opcao invalida'
                        end

                        puts ' caso deseje salvar o seu extrato digite 1 para sim ou 5 para sair'
                        answer4 = gets.chomp.to_i
                        if answer4 == '1' 

                        elsif answer4 == '5' 
                        break

                        else 
                        puts 'opcao invalida'
                        end
                        
                    when 7
                        puts '____'
                        puts 'Digite o id da sua conta a ser excluida'
                        account_del.id = gets.chomp.to_i
                        puts 'voce tem certeza que deseja excluir a sua conta? digite sim para confirmar'
                        answer = gets.chomp.to_s
                        if answer == 'sim' && account.balance < 0
                            puts ' Não é possivel excluir a sua conta pois consta débitos em sua conta'
                        elsif answer == 'sim' && account.balance > 0
                            puts "Há saldo em sua conta, por favor realizar o saque ou se deseja excluir mesmo assim, digite sim ou 5 para retornar"
                            answer2 = gets.chomp
                            if answer2 == 'sim' #account.where(document: document2).delete
                            elsif answer2 == '5'
                            break

                            else
                                puts 'opcao invalida'
                                
                            end
                        end

                    when 8
                        puts 'Até mais'
                    

                    when 9
                    puts 'Para confirmar a ação de checar saldo digite 1 e 5 para retornar'
                    answer5 = gets.chomp
                            if answer5 == '1' 
                                #account.check_balance
                            elsif answer5 == '5'
                            break

                            else
                                puts 'opcao invalida'
                                
                            end
                        end
                    

            end
        
        when 3
            puts 'Até mais'
        break

        else
        
            puts "Opção inválida"

        end
        
        end

    end


end

