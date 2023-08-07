require 'sequel'
require 'uuid'
require 'rainbow'
require './interface'

DB = Sequel.sqlite('db/sample.db')


# Sequel::Migrator.run(DB,'db/migrations', use_transations: true)

# sequel -m db/migrations sqlite://db/sample.db



 require_relative 'models/client'
 require_relative 'models/account'
 require_relative 'models/account_log'

client1 = Client.create(name: 'cliente1', document: 12245578916, address: 'teste1', tel_number: 19988775431)
# client2 = Client.create(name: 'cliente2', document: 12245578915, address: 'teste2', tel_number: 19988775432)
# client3 = Client.create(name: 'cliente3', document: 12245578914, address: 'teste3', tel_number: 19988775433)
# client4 = Client.create(name: 'cliente4', document: 12245578913, address: 'teste4', tel_number: 19988775434)
client5 = Client.create(name: 'cliente5', document: 12245578912, address: 'teste5', tel_number: 19988775435)
account1 = Account.create(client_id: client1.id)
# account2 = Account.create(client_id: client2.id)
# account3 = Account.create(client_id: client3.id)
# account4 = Account.create(client_id: client4.id)
account5 = Account.create(client_id: client5.id)
account6 = Account.create(client_id: client5.id)

# p Client.all

#   p client1
# p client2 
# p client3
# p client4
#  p client5
  p account1
# p account2
# p account3
# p account4
 p account5
#  p account6

  resultado1 = account1.deposit(60)

resultado5 = account5.deposit(100)
# resultado6 = account6.deposit(account6, 100)

p account5
# p account6

resultado7 = account5.transfer(account1, 120, 2)

p account5
# p account6
p account1


#  p account1

#  resultado2 = account1.withdraw(account1, 110)

#  p account1

interface = Interface.new()

interface.begin_interface






