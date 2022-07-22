class AddClienteDpoToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :nome_dpo, :string
    add_column :dados, :email_dpo, :string
    add_column :dados, :fone_dpo, :string
  end
end
