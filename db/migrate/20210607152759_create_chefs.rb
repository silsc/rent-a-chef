class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :location
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
