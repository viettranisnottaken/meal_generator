class CreateMealDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_dishes do |t|
      t.references :meal
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
