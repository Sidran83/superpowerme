class AddUrlToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :url, :string
  end
end
