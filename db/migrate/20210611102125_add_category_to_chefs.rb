class AddCategoryToChefs < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :category, :string
  end
end
