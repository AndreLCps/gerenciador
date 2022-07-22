class Dado < ApplicationRecord
  validates :razao, :nomef, :cnpj, :ponto, :endereco, :numero, :complemento, :cep, :bairro, :cidade,
            :estado, :email, :fone1, :homepage, presence: true
  validates :cnpj, :fone1, :fone2, :email, uniqueness: true
end
require 'csv'
def self.to_csv
  attributes = %w[email nomef]

  CSV.generate(headers: true) do |csv|
    csv << attributes

    all.each do |dado|
      csv << attributes.map { |attr| dado.send(attr) }
    end
  end
end
