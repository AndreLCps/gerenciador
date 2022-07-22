class AddIdentidadeVisualToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :endereco_pasta_arquivos, :string
    add_column :dados, :aplicativo, :string
    add_column :dados, :gerencial, :string
    add_column :dados, :internet_banking, :string
  end
end
