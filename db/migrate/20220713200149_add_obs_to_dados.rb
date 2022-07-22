class AddObsToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :observacoes_lead, :string
  end
end
