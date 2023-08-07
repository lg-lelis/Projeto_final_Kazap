class Account < Sequel::Model
    one_to_one :client
    plugin :validation_helpers
    plugin : timestamps

    def deposit(value)
        self.update(balance: self.balance + value)
    end
        
    
        
    def transfer(account1, value, op) 

        if value > self.balance + 100
            puts 'Seu saldo é insuficiente para essa transação'

        elsif self.balance - value > 0 && self.client_id != account1.client_id  && op != 1 # caso seja de mesma titularidade não há taxas
            self.update(balance: self.balance - value)
            account1.update(balance: account1.balance + (0.99 * value))
        
        
        elsif self.balance - value > 0
            self.update(balance: self.balance - value)
            account1.update(balance: account1.balance + value)
            
        else self.balance - value < 0
            puts "Você esta entrando no cheque especial, no qual irá gerar juros diário de 0.23%. Deseja continuar?"
                answer = gets.chomp.to_s
                if answer == 'sim' && self.client_id != account1.client_id  && op != 1 # caso seja de mesma titularidade não há taxas
                    self.update(balance: self.balance - value)
                    account1.update(balance: account1.balance + (0.99 * value))
                
                
                    else answer == 'sim'
                    self.update(balance: self.balance - value)
                    account1.update(balance: account1.balance + value)
                end
            end
        end
    end
        
        def withdraw (value)
            if value > self.balance + 100
                puts 'Seu saldo é insuficiente para essa transação'
            elsif self.balance - value < 0
                puts "Você esta entrando no cheque especial, no qual irá gerar juros diário de 0.23%. Deseja continuar?"
                answer = gets.chomp.to_s
                if answer == 'sim'
                    self.update(balance: self.balance - value)
                    puts "você entrou no cheque especial, no próximo depósito, será preciso repor o valor de #{self.balance}reais acrescido de 0.23% de juros diário"
                else
                    puts 'saque não realizado'
                end
            else
                self.update(balance: self.balance - value)
            end

        end
        
        def check_balance
            puts "seu saldo é de #{self.balance}"
        end

        def negative_balance(value)

end