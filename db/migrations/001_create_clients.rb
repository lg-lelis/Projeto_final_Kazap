Sequel.migration do
    change do
      create_table(:clients) do
        primary_key :id
        String  :name, null: false
        Integer :document, unique:true, null:false
        String  :address, null: false
        Integer :tel_number, null: false
      end
    end
  end