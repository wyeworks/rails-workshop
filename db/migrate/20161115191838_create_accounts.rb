class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :kind
      t.decimal :balance
      t.string :currency

      t.timestamps
    end
  end
end
