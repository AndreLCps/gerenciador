class AddBibliotecasToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :lojas_apps_android_ios, :boolean
    add_column :dados, :email_devs_cashway, :boolean
  end
end
