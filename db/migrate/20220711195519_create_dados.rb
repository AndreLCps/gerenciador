class CreateDados < ActiveRecord::Migration[6.1]
  def change
    create_table :dados do |t|
      t.string :razao
      t.string :nomef
      t.string :cnpj
      t.string :ponto
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :cep
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :email
      t.string :fone1
      t.string :fone2
      t.string :homepage
      t.string :observacoes

      t.timestamps
    end
  end
end
