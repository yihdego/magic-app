class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.integer :quantity
      t.string :card_name
      t.belongs_to :deck

      t.timestamps
    end
  end
end
