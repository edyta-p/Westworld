class CreatePersonnages < ActiveRecord::Migration[7.0]
  def change
    create_table :personnages do |t|
      t.string :name
      t.string :category
      t.string :role
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
