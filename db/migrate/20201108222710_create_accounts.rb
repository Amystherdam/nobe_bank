class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :bank_number
      t.integer :agency
      t.string :account_number
      t.integer :balance
      t.references :account_type, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
