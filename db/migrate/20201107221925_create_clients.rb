class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name_client
      t.string :national_id
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
