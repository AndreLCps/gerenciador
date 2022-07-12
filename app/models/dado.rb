class Dado < ApplicationRecord
  validates :razao, :nomef, :cnpj, :ponto, :endereco, :numero, :complemento, :cep, :bairro, :cidade,
            :estado, :email, :fone1, :homepage, :observacoes, presence: true
  validates :cnpj, :numero, :fone1, :fone2, :email, uniqueness: true
end
