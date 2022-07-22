class AddCpfToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :cpf, :string
    add_column :dados, :data_de_nascimento, :date
  end
end
