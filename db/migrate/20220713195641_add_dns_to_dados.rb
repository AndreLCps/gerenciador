class AddDnsToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :dns_ib, :string
    add_column :dados, :dns_gerencial, :string
  end
end
