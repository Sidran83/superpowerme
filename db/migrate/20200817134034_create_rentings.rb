class CreateRentings < ActiveRecord::Migration[6.0]
  def change
    create_table :rentings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :superpower, null: false, foreign_key: true

      t.timestamps
    end
  end
end
