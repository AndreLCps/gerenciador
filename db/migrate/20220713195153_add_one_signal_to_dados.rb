class AddOneSignalToDados < ActiveRecord::Migration[6.1]
  def change
    add_column :dados, :pix_devolution_recived, :string
    add_column :dados, :pix_recived, :string
    add_column :dados, :insuficient_funds, :string
    add_column :dados, :pix_devolution_send, :string
    add_column :dados, :pix_sent, :string
    add_column :dados, :slip_paid, :string
    add_column :dados, :ted_payment_confirmed, :string
    add_column :dados, :ted_recived, :string
    add_column :dados, :ted_rollback, :string
  end
end
