class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :bank_number
      t.string :agency
      t.integer :balance
      t.references :account_type, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
