class AddChavesInstituicaoFinanceiraToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :cliente_id, :string
    add_column :dados, :secret_id, :string
    add_column :dados, :secret_id_3rdtoken, :string
    add_column :dados, :pix_key, :string
  end
end
