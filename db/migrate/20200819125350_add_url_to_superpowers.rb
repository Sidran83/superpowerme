class AddUrlToSuperpowers < ActiveRecord::Migration[6.0]
  def change
    add_column :superpowers, :url, :string
  end
end
