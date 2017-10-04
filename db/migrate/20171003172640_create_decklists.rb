class CreateDecklists < ActiveRecord::Migration[5.0]
  def change
    create_table :decklists do |t|
      t.belongs_to :deck, index: true

      t.timestamps
    end
  end
end
