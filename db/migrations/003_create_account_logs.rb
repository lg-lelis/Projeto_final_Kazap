Sequel.migration do
    change do
      create_table(:log_accounts) do
        primary_key :id
        foreign_key :account_id, :account
        String :transation_type, null: false
        String :account_origin, null: false
        String :account_destination, null: false
        Float  :value,  null: false
        Float  :balance,  null: false
      end
    end
  end