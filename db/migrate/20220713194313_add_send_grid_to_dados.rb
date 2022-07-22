class AddSendGridToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :email_validate, :string
    add_column :dados, :accont_reproval, :string
    add_column :dados, :create_accont, :string
    add_column :dados, :reset_password, :string
  end
end
