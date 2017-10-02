class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :mana_cost
      t.string :cmc
      t.string :color_identity
      t.string :artist
      t.string :number
      t.string :cardtype
      t.string :text
      t.string :printings
      t.string :flavor
      t.string :layout
      t.string :multiverseid
      t.string :power
      t.integer :toughness
      t.string :rarity
      t.string :subtypes
      t.string :types

      t.timestamps
    end
  end
end
