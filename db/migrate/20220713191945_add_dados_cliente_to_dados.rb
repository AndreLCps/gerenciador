class AddDadosClienteToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :payment_agency, :string
    add_column :dados, :office_hours, :time
    add_column :dados, :agency_number, :string
    add_column :dados, :agency_full_name, :string
    add_column :dados, :checking_accont_label, :string
    add_column :dados, :sessions_new_fone_number, :string
    add_column :dados, :bank_code, :string
    add_column :dados, :agency_short_name, :string
    add_column :dados, :title_name, :string
    add_column :dados, :url_ajuda, :string
    add_column :dados, :conta_header, :string
  end
end
