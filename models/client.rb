class Client < Sequel::Model
    one_to_many :account
    plugin :validation_helpers

    def validate
        super
        validates_presence :name, message: 'nome é obrigatório'
        validates_presence :document, message: 'CPF/CNPJ é obrigatório'
        validates_presence :address, message: 'endereço é obrigatório'
        validates_presence :tel_number, message: 'numero de telefone é obrigatório'
        validates_format  /^([0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}|[0-9]{2}\.?[0-9]{3}\.?[0-9]{3}\/?[0-9]{4}\-?[0-9]{2})$/, :document, message: "CPF/CNPJ inválido"
        validates_format  /^([1-9]{2}[1-9]{9})|(9[1-9][0-9]{3}[0-9]{4})$/, :tel_number, allow_blank: true, message: "telefone inválido"
        validates_unique   :document, allow_blank: true, message: 'CPF/CNPJ ja esta em uso'
    end
end