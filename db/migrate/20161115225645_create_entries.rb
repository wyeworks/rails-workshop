class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :kind
      t.string :category
      t.decimal :amount
      t.date :date
      t.text :notes
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
