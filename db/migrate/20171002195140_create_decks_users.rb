class CreateDecksUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :decks_users, id: false do |t|
      t.belongs_to :decks, index: true
      t.belongs_to :cards, index: true
    end
  end
end
