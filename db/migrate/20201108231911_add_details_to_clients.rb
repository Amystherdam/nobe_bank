class AddDetailsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :name_client, :string
    add_column :clients, :national_identifier, :string
    add_index :clients, :national_identifier, unique: true
    add_column :clients, :phone, :string
  end
end
