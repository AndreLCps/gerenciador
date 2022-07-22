class AddNomeCompletoToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :nome_completo, :string
  end
end
