class CreateDishCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_categories do |t|
      t.references :dish, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
