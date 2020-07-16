class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :species
      t.integer :age
      t.string :color

      # added this after making 1 to M
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
