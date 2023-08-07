class Account_log < Sequel::Model
    one_to_one :account
end