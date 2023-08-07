Sequel.migration do
    change do
      create_table(:accounts) do
        primary_key :id
        foreign_key :client_id, :clients
        Float :balance, default: 0
      end
    end
  end