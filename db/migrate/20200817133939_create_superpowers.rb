class CreateSuperpowers < ActiveRecord::Migration[6.0]
  def change
    create_table :superpowers do |t|
      t.string :name
      t.text :description
      t.integer :level
      t.integer :fee
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
