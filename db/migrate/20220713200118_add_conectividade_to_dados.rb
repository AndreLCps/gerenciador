class AddConectividadeToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :remoto_ip_fixo, :string
    add_column :dados, :remoto_vpn, :string
    add_column :dados, :rxp_ip_fixo, :string
    add_column :dados, :rxp_vpn, :string
  end
end
