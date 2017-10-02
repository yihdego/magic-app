class CreateMagicSets < ActiveRecord::Migration[5.0]
  def change
    create_table :magic_sets do |t|
      t.string :name
      t.timestamps
    end
  end
end
