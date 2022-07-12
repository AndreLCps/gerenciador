json.extract! dado, :id, :razao, :nomef, :cnpj, :ponto, :endereco, :numero, :complemento, :cep, :bairro, :cidade,
              :estado, :email, :fone1, :fone2, :homepage, :observacoes, :created_at, :updated_at
json.url dado_url(dado, format: :json)
