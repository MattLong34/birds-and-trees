class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :species
      t.integer :age
      t.integer :height

      t.timestamps
    end
  end
end
